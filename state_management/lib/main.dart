import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloC/todo_bloc.dart';
import 'package:state_management/bloC/todo_event.dart';
import 'package:state_management/bloC/todo_state.dart';

void main() {
  runApp(BlocProvider(create: (_) => TodoBloc(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo BLoC',
      home: Scaffold(
        appBar: AppBar(title: const Text('ToDo App (BLoC)')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(hintText: 'Tiêu đề...'),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    controller: _descController,
                    decoration: const InputDecoration(hintText: 'Mô tả...'),
                  ),
                  const SizedBox(height: 8),
                  ElevatedButton(
                    onPressed: () {
                      final title = _titleController.text.trim();
                      final desc = _descController.text.trim();
                      if (title.isNotEmpty) {
                        context.read<TodoBloc>().add(AddToDo(title, desc));
                        _titleController.clear();
                        _descController.clear();
                      }
                    },
                    child: const Text('Thêm việc'),
                  ),
                ],
              ),
            ),
            Expanded(
              child: BlocBuilder<TodoBloc, ToDoState>(
                builder: (context, state) {
                  if (state.todos.isEmpty) {
                    return const Center(child: Text('Chưa có việc nào.'));
                  }
                  return ListView.builder(
                    itemCount: state.todos.length,
                    itemBuilder: (context, index) {
                      final todo = state.todos[index];
                      return ListTile(
                        leading: Checkbox(
                          value: todo.isDone,
                          onChanged: (_) {
                            context.read<TodoBloc>().add(ToggleTodo(index));
                          },
                        ),
                        title: Text(
                          todo.title,
                          style: TextStyle(
                            decoration:
                                todo.isDone ? TextDecoration.lineThrough : null,
                          ),
                        ),
                        subtitle: Text(todo.description),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete),
                          onPressed: () {
                            context.read<TodoBloc>().add(RemoveToDo(index));
                          },
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
