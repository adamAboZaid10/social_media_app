import 'dart:io';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'get_image_event.dart';
part 'get_image_state.dart';

class GetImageBloc extends Bloc<GetImageEvent, GetImageState> {
  GetImageBloc() : super(GetImageInitial()) {
    File? selectedImage;
    final picker = ImagePicker();
    on<GetImageEvent>((event, emit)async {
      if(event is GetImageFromGalleryEvent)
      {
        await picker.pickImage(
          source: ImageSource.gallery,
        ).then((value){
          if (value != null) {
            selectedImage = File(value.path);
            emit(SelectedImageSuccessState(selectedImage!));
          }
        }).catchError((error)
        {
          emit(SelectedImageSuccessState(error));
        });
      }

      else if(event is GetImageFromCameraEvent)
      {
        await picker.pickImage(
          source: ImageSource.camera,
        ).then((value){
          if (value != null) {
            selectedImage = File(value.path);
            emit(SelectedImageSuccessState(selectedImage!));
          }
        }).catchError((error)
        {
          emit(SelectedImageSuccessState(error));
        });
      }
    });
  }
}
