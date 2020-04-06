import 'package:flutter/material.dart';
import 'package:todoeyflutter/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoeyflutter/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];

            ///final method is used so that its not change to next 2line,
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,

              ///list-view builder is used to show the output in the screen when the task is come
              checkboxCallback: (checkboxState) {
                taskData.updateTask(task);
//              setState(() {
//                widget.tasks[index].toggleDone();
//              });
              },
              longPressCallback: () {
                taskData.deleteTask(task);

                ///longpress is help is user long press button
              },
            );
          },
          itemCount: taskData.taskCount,

          ///widget is refer the sate-full widget
          ///length is means that up-to which number task numbers
        );
      },
    );
  }
}
