import 'package:flutter/material.dart';
import 'list_tile.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: 3,
        itemBuilder: (context, index) {
          return TaskTile();
        });
  }
}
