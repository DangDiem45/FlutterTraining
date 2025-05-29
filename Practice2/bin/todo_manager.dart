import 'dart:convert';
import 'dart:io';
// ignore: depend_on_referenced_packages
import 'package:args/args.dart';

enum Status { pending, done }

class Task {
  String title;
  Status status;

  Task(this.title, [this.status = Status.pending]);

  Map<String, dynamic> toJson() => {
    'title': title,
    'status': status.toString().split('.').last,
  };

  static Task fromJson(Map<String, dynamic> json) {
    return Task(
      json['title'],
      json['status'] == 'done' ? Status.done : Status.pending,
    );
  }

  @override
  String toString() {
    return '[${status == Status.done ? "✓" : " "}] $title';
  }
}

class TaskManager {
  final String filePath;
  List<Task> tasks = [];

  TaskManager(this.filePath);

  Future<void> load() async {
    final file = File(filePath);
    if (await file.exists()) {
      final contents = await file.readAsString();
      final jsonList = jsonDecode(contents) as List;
      tasks = jsonList.map((e) => Task.fromJson(e)).toList();
    }
  }

  Future<void> save() async {
    final file = File(filePath);
    await file.writeAsString(jsonEncode(tasks));
  }

  void addTask(String title) {
    tasks.add(Task(title));
    print('Added: $title');
  }

  void listTasks() {
    if (tasks.isEmpty) {
      print('No tasks found.');
      return;
    }
    for (var i = 0; i < tasks.length; i++) {
      print('${i + 1}. ${tasks[i]}');
    }
  }

  void completeTask(int index) {
    if (index < 0 || index >= tasks.length) {
      print('Invalid task number.');
      return;
    }
    tasks[index].status = Status.done;
    print('Marked task as done: ${tasks[index].title}');
  }

  void deleteTask(int index) {
    if (index < 0 || index >= tasks.length) {
      print('Invalid task number.');
      return;
    }
    print('Deleted: ${tasks[index].title}');
    tasks.removeAt(index);
  }
}

void main(List<String> arguments) async {
  final parser =
      ArgParser()
        ..addCommand('add')
        ..addCommand('list')
        ..addCommand('done')
        ..addCommand('delete');

  final argResults = parser.parse(arguments);
  final manager = TaskManager('tasks.json');
  await manager.load();

  switch (argResults.command?.name) {
    case 'add':
      final title = argResults.command?.arguments.join(' ') ?? '';
      if (title.isEmpty) {
        print('Please provide a task title.');
      } else {
        manager.addTask(title);
      }
      break;

    case 'list':
      manager.listTasks();
      break;

    case 'done':
      final index = int.tryParse(
        argResults.command?.arguments.firstOrNull ?? '',
      );
      if (index == null) {
        print('Please provide a valid task number.');
      } else {
        manager.completeTask(index - 1);
      }
      break;

    case 'delete':
      final index = int.tryParse(
        argResults.command?.arguments.firstOrNull ?? '',
      );
      if (index == null) {
        print('Please provide a valid task number.');
      } else {
        manager.deleteTask(index - 1);
      }
      break;
    default:
      print('Usage: dart todo_manager.dart <add|list|done|delete> [args]');
  }

  await manager.save();
}
