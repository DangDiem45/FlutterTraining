abstract class ToDoEvent {}

class AddToDo extends ToDoEvent {
  final String title;
  final String description;

  AddToDo(this.title, this.description);
}

class RemoveToDo extends ToDoEvent {
  final int index;
  RemoveToDo(this.index);
}

class ToggleTodo extends ToDoEvent {
  final int index;
  ToggleTodo(this.index);
}
