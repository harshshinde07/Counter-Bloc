import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
}

class IncrementEvent extends CounterEvent {
  IncrementEvent();
  @override
  List<Object> get props => [];
}

class DecrementEvent extends CounterEvent {
  DecrementEvent();
  @override
  List<Object> get props => [];
}
