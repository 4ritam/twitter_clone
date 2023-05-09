import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../features/features.dart';

class AppConfig {
  static GoRouter router(bool auth) {
    return GoRouter(
      routes: [
        GoRoute(
          name: "get-started",
          path: "/",
          pageBuilder: (context, state) {
            return MaterialPage(child: GetStartedView());
          },
        ),
        GoRoute(
          name: "login",
          path: "/login",
          pageBuilder: (context, state) {
            return MaterialPage(child: LoginView());
          },
        ),
        GoRoute(
          name: "login-verification",
          path: "/login_verification",
          pageBuilder: (context, state) {
            return MaterialPage(child: LoginVerificationView());
          },
        ),
        GoRoute(
          name: "signup",
          path: "/signup",
          pageBuilder: (context, state) {
            return MaterialPage(child: SignUpView());
          },
        ),
        GoRoute(
          name: "password",
          path: "/password",
          pageBuilder: (context, state) {
            return MaterialPage(child: GetStartedView());
          },
        ),
      ],
    );
  }
}
