import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

var _valueCheck = false;

class TaskTile extends StatelessWidget {
  const TaskTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('This is a task.'),
      trailing: Checkbox(
        value: _valueCheck,
        onChanged: (bool? newValue) {
          _valueCheck = newValue!;
        },
      ),
    );
  }
}
