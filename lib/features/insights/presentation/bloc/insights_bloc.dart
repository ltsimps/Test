import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'insights_event.dart';
part 'insights_state.dart';
class InsightsBloc extends Bloc<InsightsEvent, InsightsState> {
  InsightsBloc() : super(InsightsInitial());
  @override
  Stream<InsightsState> mapEventToState(
    InsightsEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
