import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontWeight: FontWeight.bold,
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
          TextField(
            autofocus: true,
          ),
          SizedBox(
            height: 12,
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle().copyWith(
              backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
            ),
            child: Text('ADD'),
          )
        ],
      ),
    );
  }
}
