import 'package:flutter/cupertino.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  TasksList({required this.tasks});
  final List<Task> tasks;

  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTile(
          taskTitle: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          checkboxCallback: (bool? newValue) {
            setState(() {
              widget.tasks[index].toogleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}
