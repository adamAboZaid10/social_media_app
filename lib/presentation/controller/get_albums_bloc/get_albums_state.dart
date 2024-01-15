part of 'get_albums_bloc.dart';



@immutable
abstract class GetAlbumsState {}

class GetAlbumsInitial extends GetAlbumsState {}

class ErrorAlbumState extends GetAlbumsState {}

class LoadingAlbumState extends GetAlbumsState {}

class SuccessAlbumsState extends GetAlbumsState {
  final List<AssetEntity> albums;

  SuccessAlbumsState(this.albums);
}
