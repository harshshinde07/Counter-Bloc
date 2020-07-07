import 'package:equatable/equatable.dart';

abstract class CounterState extends Equatable {
  final int count;
  const CounterState(this.count);
}

class InitialCounterState extends CounterState {
  final int count;

  InitialCounterState({this.count = 0}) : super(count);
  @override
  List<Object> get props => [count];
}

class IncrementCounterState extends CounterState {
  final int count;

  IncrementCounterState(this.count) : super(count);
  @override
  List<Object> get props => [count];
}

class DecrementCounterState extends CounterState {
  final int count;

  DecrementCounterState(this.count) : super(count);
  @override
  List<Object> get props => [count];
}
