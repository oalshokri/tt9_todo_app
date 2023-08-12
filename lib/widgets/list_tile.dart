import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({
    super.key,
  });

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy Milk',
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: MyCheckbox(
        isChecked: isChecked,
        toggleCheckboxState: (value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}

class MyCheckbox extends StatelessWidget {
  final bool isChecked;
  final Function(bool?)? toggleCheckboxState;
  const MyCheckbox({
    super.key,
    required this.isChecked,
    required this.toggleCheckboxState,
  });

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: isChecked,
      onChanged: toggleCheckboxState,
    );
  }
}
