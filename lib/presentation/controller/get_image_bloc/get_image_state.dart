part of 'get_image_bloc.dart';

@immutable
abstract class GetImageState {}

class GetImageInitial extends GetImageState {}

class SelectedImageSuccessState extends GetImageState
{
  final File selectedImage;
  SelectedImageSuccessState(this.selectedImage);
}

class SelectedImageErrorState extends GetImageState
{
  final String error ;
  SelectedImageErrorState(this.error);
}

