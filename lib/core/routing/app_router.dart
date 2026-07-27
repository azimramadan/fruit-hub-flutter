import 'package:fruit_hub/features/auth/presentation/pages/login_page.dart';
import 'package:fruit_hub/features/auth/presentation/pages/signup_page.dart';
import 'package:fruit_hub/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String resetPassword = '/reset-password';

  static final GoRouter router = GoRouter(
    initialLocation: splash,
    debugLogDiagnostics: false,
    routes: [
      GoRoute(
        path: splash,
        name: 'splash',
        builder: (context, state) => const SignupPage(),
      ),
      GoRoute(
        path: onboarding,
        name: 'onboarding',
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: login,
        name: 'login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: signup,
        name: 'signup',
        builder: (context, state) => const SignupPage(),
      ),
      // GoRoute(
      //   path: resetPassword,
      //   name: 'reset-password',
      //   builder: (context, state) => const ResetPasswordPage(),
      // ),
    ],
  );
}
