import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_management/bloC/todo_bloc.dart';
import 'package:state_management/bloC/todo_event.dart';
import 'package:state_management/bloC/todo_state.dart';

void main() {
  runApp(BlocProvider(create: (_) => TodoBloc(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ToDo App',
      theme: ThemeData(primaryColor: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: TodoList(),
    );
  }
}

class TodoList extends StatelessWidget {
  const TodoList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToDo List")),
      body: BlocBuilder<TodoBloc, ToDoState>(
        builder: (context, state) {
          if (state.todos.isEmpty) {
            return Center(child: Text('No Todo item'));
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
                    decoration: todo.isDone ? TextDecoration.lineThrough : null,
                  ),
                ),
                subtitle: Text(todo.description),
                trailing: IconButton(
                  onPressed: () {
                    context.read<TodoBloc>().add(RemoveToDo(index));
                  },
                  icon: Icon(Icons.delete, color: Colors.red),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TodoApp()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _TodoAppState();
}

class _TodoAppState extends State<TodoApp> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

  void _submit() {
    final title = _titleController.text.trim();
    final description = _descriptionController.text.trim();

    if (title.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Title cannot be empty')));
      return;
    }

    context.read<TodoBloc>().add(AddToDo(title, description));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ToDo App")),
      body: Column(
        children: [
          TextFormField(
            controller: _titleController,
            decoration: InputDecoration(
              labelText: 'Title',
              hintText: 'Enter title',
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            controller: _descriptionController,
            decoration: InputDecoration(
              labelText: 'Description',
              hintText: 'Enter description',
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: _submit,
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              child: Text('Add ToDo', style: TextStyle(color: Colors.black)),
            ),
          ),
        ],
      ),
    );
  }
}
