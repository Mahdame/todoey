import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/utilities/constants.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    required this.isChecked,
    required this.taskTitle,
    required this.checkboxCallback,
    required this.longPressCallback,
  });

  final String? taskTitle;
  final bool? isChecked;
  final Function(bool?) checkboxCallback;
  final VoidCallback? longPressCallback;

  void showAlertDialog(BuildContext context, String title) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text('${title}'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('CANCELAR'),
          ),
          CupertinoDialogAction(
            isDefaultAction: true,
            isDestructiveAction: true,
            onPressed: longPressCallback,
            child: const Text('DELETAR'),
          ),
        ],
      ),
    );
  }

  Future<void> showMyDialog(BuildContext context, String title) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('${title}'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('CANCELAR'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: const Text('DELETAR'),
              onPressed: longPressCallback,
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    String dialogMessage = 'Esta ação é irreversível! \n Tem certeza?';
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        decoration: const BoxDecoration(
          color: secBackgroundColor,
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),

        ),
        child: ListTile(
          onLongPress: () => Platform.isIOS
              ? showAlertDialog(context, dialogMessage)
              : showMyDialog(context, dialogMessage),
          // longPressCallback,
          title: Text(
            taskTitle!,
            style: TextStyle(
              color: Colors.black87,
                decoration: isChecked! ? TextDecoration.lineThrough : null),
          ),
          trailing: Checkbox(
            activeColor: mainBackgroundColor,
            value: isChecked,
            onChanged: checkboxCallback,
          ),
        ),
      ),
    );
  }
}
