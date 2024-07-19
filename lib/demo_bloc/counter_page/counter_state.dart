part of 'counter_cubit.dart';

@immutable
sealed class CounterState {
  final int count;
  CounterState(this.count);
}

final class CounterInitial extends CounterState {
  CounterInitial() : super(0);
}
final class CounterChanged extends CounterState {
  final DateTime dateChanged;
  CounterChanged(this.dateChanged, super.count);
}
