import 'package:equatable/equatable.dart';
import 'package:state_management/model/todo.dart';

class ToDoState extends Equatable {
  final List<ToDo> todos;

  const ToDoState(this.todos);

  @override
  List<Object> get props => [todos];
}
