import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/routes.dart';

import 'pages/homepage/periksa_anak_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sipas Gemastik",
      theme: ThemeData(
        fontFamily: "Roboto",
        scaffoldBackgroundColor: whiteColor,
      ),
      // initialRoute: "/appPages",
      // onGenerateRoute: RouteGenerator.generateRoute,
      home: PeriksaAnakPage(),
    );
  }
}
