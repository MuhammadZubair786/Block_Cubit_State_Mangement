import 'package:bloc_cubit/counterPage.dart';
import 'package:bloc_cubit/cubit/counter_cubit/counter_cubit.dart';
import 'package:bloc_cubit/services/service_locater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => getIt<CounterCubit>(),
        child: const CounterPage(),
      ),
    );
  }
}
