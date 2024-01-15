part of 'start_listing_bloc.dart';

@immutable
abstract class StartListingEvent {}

class OpenMicEvent extends StartListingEvent{}
class LikeEvent extends StartListingEvent{}

