import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';
import 'package:todoeyflutter/models/task.dart';

class AddTaskScreen extends StatelessWidget {
//  final Function addTasksCallback;
//
//  AddTaskScreen(this.addTasksCallback);

  ///add task is used the call back method
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      padding: EdgeInsets.all(40),
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Tasks',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, color: Colors.lightBlueAccent),
            ),
            TextField(
              autofocus: true,

              ///auto means help that when the screen is open then its directly goes to add the text in the add option,
              textAlign: TextAlign.center,

              /// add the task start to center
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            FlatButton(
              child: Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.lightBlueAccent,
//              onPressed: () {
//                Provider.of<TaskData>(context).addTask(newTaskTitle);
//                Navigator.pop(context);
//                //the method is used later
//              },
              onPressed: () {
                if (newTaskTitle == null){
                  Navigator.pop(context);
                } else {
                  Provider.of<TaskData>(context).addTask(newTaskTitle);
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
