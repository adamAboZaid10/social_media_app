import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_media_app/presentation/controller/get_image_bloc/get_image_bloc.dart';
import 'package:social_media_app/presentation/widget/widget_components/custom_botton_register.dart';

import '../../screens/register_screens/done_image_screen.dart';

class ShowDialogImage extends StatelessWidget {
  const ShowDialogImage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetImageBloc,GetImageState>(
      builder: (context,state)
      {
        return Center(
          child: SingleChildScrollView(
            child: AlertDialog(
              backgroundColor: Colors.transparent,
              shape: const RoundedRectangleBorder(
                side: BorderSide.none,
              ),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: ()
                    {
                      Navigator.pop(context);
                    },
                    icon:const  Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  const SizedBox(height: 10,),
                  const Text(
                    'Please choose an option',
                    style:  TextStyle(color:Colors.white,fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  CustomButtonRegisterWidget(
                      onPressed: () {
                       context.read<GetImageBloc>().add(GetImageFromGalleryEvent());
                       Navigator.pushReplacement(
                           context,
                           MaterialPageRoute(builder: (context)=>const DoneImageScreen()));
                      },
                      color: Colors.white,
                      text: 'Choose From Camera Roll'),
                  CustomButtonRegisterWidget(
                      onPressed: () {
                        context.read<GetImageBloc>().add(GetImageFromCameraEvent());
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context)=>const DoneImageScreen()));
                      },
                      color: Colors.white,
                      text: 'Take photo'),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

