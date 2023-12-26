import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/presentation/bloc/todo/todo_cubics.dart';
import 'injection_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => di.sl<TodoCubic>()..getTodos())],
      child: MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) {
            return BlocBuilder<TodoCubic, TodoState>(
                builder: (context, todoState) {
              if (todoState is TodoInitial || todoState is TodoLoading) {
                return Scaffold(
                  body: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else {
                return Scaffold(
                  body: Center(
                    child: Text("Error has Occured"),
                  ),
                );
              }
            });
          }
        },
      ),
    );
  }
}
