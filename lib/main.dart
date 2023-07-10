import 'package:flutter/material.dart';
import 'package:sipas/pages/homepage/chat_page.dart';

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
      // initialRoute: "/",
      // onGenerateRoute: RouteGenerator.generateRoute,
      home: const ChatPages(),
    );
  }
}
