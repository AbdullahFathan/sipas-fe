import 'package:flutter/material.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/data/dummy/articel.dart';
import 'package:sipas/data/dummy/detail_recipes.dart';
import 'package:sipas/data/model/help.dart';
import 'package:sipas/pages/articel/detail_articel.dart';
import 'package:sipas/pages/articel/search_articel_page.dart';
import 'package:sipas/pages/food_recipes/detail_recipes_page.dart';
import 'package:sipas/pages/food_recipes/food_recipes_page.dart';
import 'package:sipas/pages/app_page.dart';
import 'package:sipas/pages/articel/article_page.dart';
import 'package:sipas/pages/auth/forgot_pass_page.dart';
import 'package:sipas/pages/auth/login_page.dart';
import 'package:sipas/pages/auth/register_page.dart';
import 'package:sipas/pages/eror_page.dart';
import 'package:sipas/pages/food_recipes/search_recipes_page.dart';
import 'package:sipas/pages/homepage/add_child_page.dart';
import 'package:sipas/pages/homepage/bantuan_page.dart';
import 'package:sipas/pages/homepage/chat_page.dart';
import 'package:sipas/pages/homepage/detail_bantuan.dart';
import 'package:sipas/pages/homepage/form_ajuan_bantuan.dart';
import 'package:sipas/pages/homepage/grup_page.dart';
import 'package:sipas/pages/homepage/home_page.dart';
import 'package:sipas/pages/homepage/medical_facility_connect.dart';
import 'package:sipas/pages/homepage/pantau_bayi_page.dart';
import 'package:sipas/pages/homepage/periksa_anak_page.dart';
import 'package:sipas/pages/homepage/periksa_hamil_page.dart';
import 'package:sipas/pages/onboarding/onboarding_page.dart';
import 'package:sipas/pages/profile/about_us.dart';
import 'package:sipas/pages/profile/data_user.dart';
import 'package:sipas/pages/profile/detail_child_user.dart';
import 'package:sipas/pages/profile/detail_prenagcy_user.dart';
import 'package:sipas/pages/profile/edit_child_data.dart';
import 'package:sipas/pages/profile/edit_prenagcy_data.dart';
import 'package:sipas/pages/profile/near_faskes.dart';
import 'package:sipas/pages/profile/profile_page.dart';
import 'package:sipas/pages/profile/profile_user.dart';
import 'package:sipas/pages/profile/saved_user.dart';

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
      case searchRecipesRoute:
        return MaterialPageRoute(
            builder: (_) => SearchRecipesPage(
                  textTitle: settings.arguments as String,
                ));
      case detailRecipesRoute:
        return MaterialPageRoute(
            builder: (_) => DetailRecipes(
                  recipes: settings.arguments as Recepies,
                ));
      case searchArticelRoute:
        return MaterialPageRoute(builder: (_) => const SearchArticel());
      case detailArticelRoute:
        return MaterialPageRoute(
            builder: (_) => DetailArticel(
                  articel: settings.arguments as Articel,
                ));
      case profileUserRoute:
        return MaterialPageRoute(builder: (_) => const ProfileUser());
      case dataUserRoute:
        return MaterialPageRoute(builder: (_) => const DataUserPage());
      case nearFaskesRoute:
        return MaterialPageRoute(builder: (_) => const NearFaskesPage());
      case savedUserRoute:
        return MaterialPageRoute(builder: (_) => const SavedUser());
      case aboutUsRoute:
        return MaterialPageRoute(builder: (_) => const AboutUsPage());
      case detailPrenagcyUser:
        return MaterialPageRoute(
            builder: (_) => DetailPrenagcyUser(
                  name: settings.arguments as String,
                ));
      case detailChildUser:
        return MaterialPageRoute(builder: (_) => const DetailChildUser());
      case editChildData:
        return MaterialPageRoute(builder: (_) => const EditChildData());
      case editPrenacgyData:
        return MaterialPageRoute(builder: (_) => const EditPrenagcyData());
      case bantuanPage:
        return MaterialPageRoute(builder: (_) => const BantuanPage());
      case formBantuanPage:
        return MaterialPageRoute(builder: (_) => const FormAjuanBantuanPage());
      case addDataChild:
        return MaterialPageRoute(builder: (_) => const AddChildPage());
      case detailBantuan:
        return MaterialPageRoute(
            builder: (_) => DetailBantuanPage(
                  helpSubmit: settings.arguments as HelpSubmit,
                ));

      default:
        return MaterialPageRoute(
            builder: (_) => ErorPage(
                  erorText: settings.arguments as String,
                ));
    }
  }
}
