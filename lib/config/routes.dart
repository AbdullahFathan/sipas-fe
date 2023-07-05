import 'package:flutter/material.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/pages/auth/forgot_pass_page.dart';
import 'package:sipas/pages/auth/login_page.dart';
import 'package:sipas/pages/auth/register_page.dart';
import 'package:sipas/pages/onboarding/onboarding_page.dart';

class RouteGenerator {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onBoaringRoute:
        return MaterialPageRoute(builder: (_) => const OnboardingPage());
      case loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgotPasswordPage());
      default:
        return null;
    }
  }
}
