import 'package:flutter/material.dart';
import 'package:todoey/utilities/constants.dart';

class TopBanner extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 60.0, bottom: 30.0, left: 30.0, right: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            child: Icon(
              Icons.list,
              size: 30.0,
              color: mainBackgroundColor,
            ),
            backgroundColor: Colors.white,
            radius: 30.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            'Todoey',
            style: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
          Text(
            '12 tarefas',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}