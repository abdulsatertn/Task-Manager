import 'package:flutter/material.dart';
import 'package:task_manager/constants.dart';
import 'package:task_manager/core/utils/app_router.dart';
import 'package:task_manager/features/splash/splash_view.dart';

void main() {
  runApp(const TaskManagerApp());
}

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Task Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryLightColor,
      ),
    );
  }
}
