part of 'get_image_bloc.dart';

@immutable
abstract class GetImageEvent {}

class GetImageFromGalleryEvent extends GetImageEvent{}

class GetImageFromCameraEvent extends GetImageEvent{}
