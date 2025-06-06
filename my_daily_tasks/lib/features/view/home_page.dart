import 'package:flutter/material.dart';
import 'package:my_daily_tasks/features/view/add_task_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> tasks = [];

  void _addTask(String task) {
    setState(() {
      tasks.add(task);
    });
  }

  void _navigatorToAddTask() async {
    final newTask = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => AddTaskPage()));
    if (newTask != null && newTask is String) {
      _addTask(newTask);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Task"),
      ),
      body: ListView.separated(
          itemCount: tasks.length,
          itemBuilder: (context, index) => ListTile(
                title: Text(tasks[index]),
                trailing: IconButton(
                    onPressed: () {
                      setState(() {
                        tasks.removeAt(index);
                      });
                    },
                    icon: const Icon(Icons.delete, color: Colors.red)),
              ),
          separatorBuilder: (BuildContext context, int index) => const Divider(
                color: Colors.grey,
                thickness: 1.2,
                indent: 16,
                endIndent: 16,
              )),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigatorToAddTask,
        child: const Icon(Icons.add),
      ),
    );
  }
}
