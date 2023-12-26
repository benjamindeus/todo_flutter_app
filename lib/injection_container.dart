import 'package:get_it/get_it.dart';
import 'package:todo_app/presentation/bloc/todo/todo_cubics.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerFactory(() => TodoCubic());
}
