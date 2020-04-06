import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked; //=false;

  final String taskTitle;

  final Function checkboxCallback;

  final Function longPressCallback;

  TaskTile(
      {this.isChecked,
      this.taskTitle,
      this.checkboxCallback,
      this.longPressCallback});

  ///in stateful widget the value change in we give any functionality to this so that final method is not be used,
  ///

  ///its is used in the below the class so that its used the both operation(text & checkbox) at a time

  ///its gives the condition to perform the task

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,

      ///longpress is help is user long press button
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),

      ///imp line-through means the line is show cross
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

//class TaskCheckBox extends StatelessWidget {
//  ///in stateless widget the value is not be change so that(final) method is used in this
//  final bool checkboxState;
//  final Function toggleCheckboxState;
//
//  TaskCheckBox({this.checkboxState, this.toggleCheckboxState});
//
//  @override
//  Widget build(BuildContext context) {
//    return
//
////        setState(() {
////          isChecked = newValue;
////        });
//      //this above set-state is goes up(call back method)
//  }
//}
