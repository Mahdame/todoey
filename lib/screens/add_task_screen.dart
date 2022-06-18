import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/utilities/constants.dart';

import '../models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String? newTaskTitle;

    return Container(
      color: addTaskBackgroundColor,
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Adicionar Tarefa',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                  color: mainBackgroundColor,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: mainBackgroundColor),
                  ),
                  hintText: 'Nova tarefa',
                ),
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              const SizedBox(
                height: 30.0,
              ),
              TextButton(
                style: flatButtonStyle,
                child: const Text('Criar Tarefa'),
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle!);
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
