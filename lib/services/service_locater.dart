import 'package:bloc_cubit/cubit/counter_cubit/counter_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupLocator() {
  getIt.registerLazySingleton<CounterCubit>(() => CounterCubit());
}
