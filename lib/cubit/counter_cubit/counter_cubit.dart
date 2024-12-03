import 'package:bloc/bloc.dart';
import 'package:bloc_cubit/cubit/counter_cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState());

  void increment() {
    emit(state.copyWith(counter: (state.counter ?? 0) + 1));
  }

  void decrement() {
    if (state.counter != 0) {
      emit(state.copyWith(counter: (state.counter ?? 0) - 1));
    }
  }

  void reset() {
    emit(state.copyWith(counter: 0));
  }
}
