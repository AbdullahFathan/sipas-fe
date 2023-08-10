import 'package:flutter/material.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/pages/food_recipes/food_recipes_page.dart';
import 'package:sipas/pages/app_page.dart';
import 'package:sipas/pages/articel/article_page.dart';
import 'package:sipas/pages/auth/forgot_pass_page.dart';
import 'package:sipas/pages/auth/login_page.dart';
import 'package:sipas/pages/auth/register_page.dart';
import 'package:sipas/pages/eror_page.dart';
import 'package:sipas/pages/homepage/chat_page.dart';
import 'package:sipas/pages/homepage/grup_page.dart';
import 'package:sipas/pages/homepage/home_page.dart';
import 'package:sipas/pages/homepage/medical_facility_connect.dart';
import 'package:sipas/pages/homepage/pantau_bayi_page.dart';
import 'package:sipas/pages/homepage/periksa_anak_page.dart';
import 'package:sipas/pages/homepage/periksa_hamil_page.dart';
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
      case medicalFacilityRoute:
        return MaterialPageRoute(
            builder: (_) => const MedicalFacilityConnect());
      case appPagesRoute:
        return MaterialPageRoute(builder: (_) => const AppPages());
      case chatPagesRoute:
        return MaterialPageRoute(builder: (_) => const ChatPages());
      case pantauAnakRoute:
        return MaterialPageRoute(builder: (_) => const PantauAnakPage());
      case grupRoute:
        return MaterialPageRoute(builder: (_) => const GrupPage());

      case periksaAnakRoute:
        return MaterialPageRoute(builder: (_) => const PeriksaAnakPage());
      case periksaHamilRoute:
        return MaterialPageRoute(builder: (_) => const PeriksaHamilPage());

      default:
        return MaterialPageRoute(builder: (_) => const ErorPage());
    }
  }
}
