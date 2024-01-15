

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:social_media_app/presentation/controller/get_albums_bloc/get_albums_bloc.dart';


class AlbumsScreenBody extends StatelessWidget {
  const AlbumsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children:
        [
          CustomGridViewAlbums(),
        ],
      ),
    );
  }
}



class CustomGridViewAlbums extends StatelessWidget {
  const CustomGridViewAlbums({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetAlbumsBloc,GetAlbumsState>(
      builder: (context,state)
      {
        if(state is SuccessAlbumsState)
        {
          return GridView.count(
            shrinkWrap: true,
            mainAxisSpacing: 1,
            childAspectRatio: 1 / 1,
            crossAxisSpacing: 1,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 4,
            children: List.generate(state.albums.length, (index) {
              return  Column(
                children:
                [

                  SizedBox(
                    width: MediaQuery.of(context).size.width*.1,
                    height: MediaQuery.of(context).size.height*.1,
                    child: ImageItem(state.albums[index]),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.height*.05,),
                ],
              );
            }),
          );
        }
        else{
          return const  Center(child: CircularProgressIndicator(),);
        }
      },

    );
  }
}


class ImageItem extends StatelessWidget {
  final AssetEntity photo;

  ImageItem(this.photo);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Uint8List?>(
      future: photo.thumbnailData,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done && snapshot.data != null) {
          return Image.memory(snapshot.data!);
        } else {
          return const  CircularProgressIndicator();
        }
      },
    );
  }
}


