import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState(count: 0)) {
    on<CounterIncrease>(_increase);
    on<CounterDecrease>(_decrease);
  }

  FutureOr<void> _increase(CounterIncrease event, Emitter<CounterState> emit) {
    emit(state.copyWith(count: state.count + 1));
  }

  FutureOr<void> _decrease(CounterDecrease event, Emitter<CounterState> emit) {
    emit(state.copyWith(count: state.count - 1));
  }
}
