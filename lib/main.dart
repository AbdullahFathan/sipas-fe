import 'package:flutter/material.dart';
import 'package:sipas/config/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Sipas Gemastik",
      theme: ThemeData(fontFamily: "Roboto"),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
