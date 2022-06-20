import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/utilities/constants.dart';

import '../models/task_data.dart';

class TopBanner extends StatefulWidget {
  const TopBanner({required this.tasks});
  final List<Task> tasks;

  @override
  State<TopBanner> createState() => _TopBannerState();
}

class _TopBannerState extends State<TopBanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 60.0, bottom: 30.0, left: 30.0, right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 30.0,
            child: Icon(
              Icons.list,
              size: 40.0,
              color: mainBackgroundColor,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            'Todoey',
            style: TextStyle(
                fontSize: 50.0,
                fontFamily: 'Pacifico',
                color: Colors.white),
          ),
          const SizedBox(
            height: 3.0,
          ),
          Text(
            '${Provider.of<TaskData>(context).taskCount} tarefas',
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
