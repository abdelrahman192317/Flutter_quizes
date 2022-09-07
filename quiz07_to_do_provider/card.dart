import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'toDoList.dart';
import 'task.dart';

class CardWidget extends StatelessWidget {
  final Task task;

  const CardWidget({
    Key? key,
    required this.task,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    DateTime date = DateTime(task.day.year,task.day.month,task.day.day,task.day.hour,task.day.minute);

    return ListTile(
      contentPadding: EdgeInsets.all(10),
      title: Text(
        task.name,
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        task.isDone ? 'Done' :
        DateFormat('EEE, M/d, HH:mm a').format(date),
        style: TextStyle(
          fontSize: 17,
        ),
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            onPressed: () {
              Provider.of<ToDoList>(context, listen: false).toggleTask(task);
            },
            icon: Icon(
              task.isDone? Icons.check_box :
              Icons.check_box_outline_blank,
              color: Colors.green,),
          ),
          IconButton(
            onPressed: () {
              Provider.of<ToDoList>(context,listen: false).deleteFromList(task);
            },
            icon: Icon(Icons.delete,color: Colors.red,),
          ),
        ],
      ),
    );
  }
}