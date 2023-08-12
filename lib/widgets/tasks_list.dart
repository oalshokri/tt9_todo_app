import 'package:flutter/material.dart';
import '../models/task.dart';
import 'list_tile.dart';

class TasksList extends StatefulWidget {
  const TasksList({
    super.key,
  });

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy bread'),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            name: tasks[index].name,
            isChecked: tasks[index].isDone,
            checkboxCallback: (bool? value) {
              setState(() {
                tasks[index].toggleDone();
              });
            },
          );
        });
  }
}
