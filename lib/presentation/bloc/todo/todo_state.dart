// ignore_for_file: public_member_api_docs, sort_constructors_first
part of "todo_cubics.dart";

abstract class TodoState extends Equatable {
  const TodoState();
}

class TodoInitial extends TodoState {
  @override
  List<Object> get props => [];
}

class TodoLoading extends TodoState {
  @override
  List<Object> get props => [];
}

class TodoLoaded extends TodoState {
  final List<TodoEntity>? todos;
  TodoLoaded({
    this.todos,
  });

  @override
  List<Object?> get props => [todos];
}
