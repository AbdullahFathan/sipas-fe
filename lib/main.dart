import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/routes.dart';
import 'package:sipas/cubit/articel/articel_cubit.dart';

import 'package:sipas/cubit/auth/auth_cubit.dart';
import 'package:sipas/cubit/child/child_cubit.dart';
import 'package:sipas/cubit/grup/grup_cubit.dart';
import 'package:sipas/cubit/health/health_cubit.dart';
import 'package:sipas/cubit/help/help_cubit.dart';
import 'package:sipas/cubit/message/message_cubit.dart';
import 'package:sipas/cubit/pregnancy/pregnancy_cubit.dart';
import 'package:sipas/cubit/recipes/recipes_cubit.dart';
import 'package:sipas/pages/app_page.dart';
import 'package:sipas/pages/onboarding/onboarding_page.dart';

main() async {
  await GetStorage.init();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthCubit()..isHasLogin(),
          ),
          BlocProvider(
            create: (context) => HealthCubit()..isConnextedFakes(),
          ),
          BlocProvider(
            create: (context) => PregnancyCubit(),
          ),
          BlocProvider(
            create: (context) => ChildCubit(),
          ),
          BlocProvider(
            create: (context) => ArticelCubit()..fetchDataArticel(),
          ),
          BlocProvider(
            create: (context) => RecipesCubit(),
          ),
          BlocProvider(
            create: (context) => HelpCubit(),
          ),
          BlocProvider(
            create: (context) => MessageCubit(),
          ),
          BlocProvider(
            create: (context) => GrupCubit(),
          )
        ],
        child: MaterialApp(
          title: "Sipas Gemastik",
          theme: ThemeData(
            fontFamily: "Roboto",
            scaffoldBackgroundColor: whiteColor,
          ),
          home: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              if (state is Authenticated) {
                return const AppPages();
              }
              return const OnboardingPage();
            },
          ),
          onGenerateRoute: RouteGenerator.generateRoute,
        ));
  }
}
