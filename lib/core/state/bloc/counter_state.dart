part of 'counter_bloc.dart';

@immutable
class CounterState {
  const CounterState({
    required this.count,
  });

  final int count;

  CounterState copyWith({
    int? count,
  }) {
    return CounterState(
      count: count ?? this.count,
    );
  }
}
