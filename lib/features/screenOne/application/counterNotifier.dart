import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter/features/screenOne/application/counterState.dart';

class CounterNotifier extends StateNotifier<CounterState> {
  CounterNotifier(super.state);

  int increase = 0;

  void increement() {
    state = state.copyWith(counter: increase++);
  }

  void decreement() {
    state = state.copyWith(counter: increase--);
  }
}

final counter = StateNotifierProvider<CounterNotifier, CounterState>(
    (ref) => CounterNotifier(const CounterState()));
