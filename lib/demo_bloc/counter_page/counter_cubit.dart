import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {

  CounterCubit() : super(CounterInitial());

  void increment()=> emit(
    CounterChanged(DateTime.now(), state.count + 1)
  );
  void decrement()=> emit(
      CounterChanged(DateTime.now(), state.count - 1)
  );
}
