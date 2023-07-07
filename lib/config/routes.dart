import 'package:flutter/material.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/food_recipes/food_recipes_page.dart';
import 'package:sipas/pages/articel/article_page.dart';
import 'package:sipas/pages/auth/forgot_pass_page.dart';
import 'package:sipas/pages/auth/login_page.dart';
import 'package:sipas/pages/auth/register_page.dart';
import 'package:sipas/pages/homepage/home_page.dart';
import 'package:sipas/pages/onboarding/onboarding_page.dart';
import 'package:sipas/pages/profile/profile_page.dart';

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
      case homePageRoute:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case articleRoute:
        return MaterialPageRoute(builder: (_) => const ArticlePage());
      case profileRoute:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case foodRecipesRoute:
        return MaterialPageRoute(builder: (_) => const FoodRecipesPage());

      default:
        return null;
    }
  }
}
