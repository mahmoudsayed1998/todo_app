import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/shared/components/components.dart';
import 'package:todo_app/shared/cubit/cubit.dart';
import 'package:todo_app/shared/cubit/states.dart';

class DoneTasksScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ToDoAppCubit, TodoAppStates>(
      listener: (context, state) {},
      builder: (context, state)
      {
        var tasks = ToDoAppCubit.get(context).doneTasks;

        return tasksBuilder(
          tasks: tasks,
        );
      },
    );
  }
}
