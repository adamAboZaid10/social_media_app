
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'start_listing_event.dart';
part 'start_listing_state.dart';

class StartListingBloc extends Bloc<StartListingEvent, StartListingState> {
  bool micState =false;
  bool like =false;
  StartListingBloc() : super(StartListingInitial()) {

    on<StartListingEvent>((event, emit) {
      if(event is OpenMicEvent)
      {
        micState = !micState;
        emit(OpenMicState( micState));
      }else if (event is LikeEvent)
      {
        like = !like;
        emit(LikeState(like));
      }
    });
  }
}
