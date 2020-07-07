import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import './bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(InitialCounterState());

  CounterState get initialState => InitialCounterState();

  @override
  Stream<CounterState> mapEventToState(
    CounterEvent event,
  ) async* {
    if (event is IncrementEvent) {
      yield IncrementCounterState(state.count + 1);
    }
    if (event is DecrementEvent) {
      yield DecrementCounterState(state.count - 1);
    }
  }
}
