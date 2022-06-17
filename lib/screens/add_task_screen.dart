import 'package:flutter/material.dart';
import 'package:todoey/utilities/constants.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              Text(
                'Adicionar Tarefa',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                  color: mainBackgroundColor,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: mainBackgroundColor)),
                  hintText: 'Nova tarefa',
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              TextButton(
                style: flatButtonStyle,
                child: Text('Criar Tarefa'),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
