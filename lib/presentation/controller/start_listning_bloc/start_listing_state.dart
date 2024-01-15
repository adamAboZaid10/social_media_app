part of 'start_listing_bloc.dart';

@immutable
abstract class StartListingState {}

class StartListingInitial extends StartListingState {

}

class OpenMicState extends StartListingState {
  final bool mic;
  OpenMicState(this.mic);
}
class LikeState extends StartListingState {
  final bool like;
  LikeState(this.like);
}
