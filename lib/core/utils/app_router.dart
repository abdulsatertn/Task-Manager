import 'package:go_router/go_router.dart';
import 'package:task_manager/features/sign_in/presentation/views/sign_in_view.dart';
import 'package:task_manager/features/sign_in/presentation/views/sign_up_view.dart';
import 'package:task_manager/features/splash/presentation/view/splash_view.dart';

abstract class AppRouter {
  static const String kSignIn = '/signIn';
  static const String kSignUp = '/signUp';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kSignIn,
        builder: (context, state) => SignInView(),
      ),
      GoRoute(
        path: kSignUp,
        builder: (context, state) => SignUpView(),
      ),
    ],
  );
}
