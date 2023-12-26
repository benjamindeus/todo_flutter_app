import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:todo_app/domain/entity/todo_entity.dart';

part 'todo_state.dart';

class TodoCubic extends Cubit<TodoState> {
  TodoCubic() : super(TodoInitial());

  Future<void> getTodos() async {
    emit(TodoLoading());
    await Future.delayed(Duration(seconds: 5));
    emit(TodoLoaded());
  }
}
