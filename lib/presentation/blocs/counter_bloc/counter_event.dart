part of 'counter_bloc.dart';

abstract class CounterEvent {
  const CounterEvent();
}

class CounterIncreased extends CounterEvent {
  final int value;
  CounterIncreased(this.value);
}

// CounterReset is a class that extends CounterEvent
class CounterReset extends CounterEvent {
  const CounterReset();
}
