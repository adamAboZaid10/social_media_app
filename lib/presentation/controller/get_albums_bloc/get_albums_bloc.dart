

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:photo_manager/photo_manager.dart';

part 'get_albums_event.dart';
part 'get_albums_state.dart';

class GetAlbumsBloc extends Bloc<GetAlbumsEvent, GetAlbumsState> {
  GetAlbumsBloc() : super(GetAlbumsInitial()) {
    List<AssetEntity> media = [];
    late List<AssetPathEntity> result=[];
    on<GetAlbumsEvent>((event, emit)async {

      if(event is GetAlbumEvent)
      {

        media = await  result[0].getAssetListPaged(page: 1, size: 100);
        emit(SuccessAlbumsState(media));
      }
    });
  }
}
