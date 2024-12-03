import 'package:bloc_cubit/cubit/counter_cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/counter_cubit/counter_cubit.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter with GetIt and Cubit")),
      body: Center(
        child: BlocBuilder<CounterCubit, CounterState>(
          builder: (context, state) {
            var cubit = context.read<CounterCubit>();
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Counter: ${state.counter}', style: const TextStyle(fontSize: 30)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => cubit.increment(),
                      child: const Text("Increment"),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => cubit.decrement(),
                      child: const Text("Decrement"),
                    ),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => cubit.reset(),
                      child: const Text("Reset"),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
