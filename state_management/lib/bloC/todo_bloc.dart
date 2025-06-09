import 'package:state_management/bloC/todo_event.dart';
import 'package:state_management/bloC/todo_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/model/todo.dart';

class TodoBloc extends Bloc<ToDoEvent, ToDoState> {
  TodoBloc() : super(ToDoState([])) {
    on<AddToDo>((event, emit) {
      final update = List<ToDo>.from(state.todos);
      update.add(ToDo(title: event.title, description: event.description));
      emit(ToDoState(update));
    });
    on<RemoveToDo>((event, emit) {
      final update = List<ToDo>.from(state.todos);
      update.removeAt(event.index);
      emit(ToDoState(update));
    });
    on<ToggleTodo>((event, emit) {
      final update = List<ToDo>.from(state.todos);
      final current = update[event.index];
      update[event.index] = current.copyWith(isDone: !current.isDone);
      emit(ToDoState(update));
    });
  }
}
