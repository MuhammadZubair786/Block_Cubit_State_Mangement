// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  int? counter;

  CounterState({
    this.counter,
  });

  CounterState copyWith({int? counter}) {
    return CounterState(
      counter: counter ?? this.counter,
    );
  }

  @override
  List<Object?> get props => [counter];
}
