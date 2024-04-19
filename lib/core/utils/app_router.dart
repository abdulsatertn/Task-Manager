import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_manager/features/splash/splash_view.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
    ],
  );
}
