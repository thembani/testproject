import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(const CounterState(count: 0));

  increase() {
    emit(state.copyWith(count: state.count + 1));
  }

  decrease() {
    emit(state.copyWith(count: state.count - 1));
  }
}
