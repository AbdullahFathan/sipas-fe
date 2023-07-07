import 'package:flutter/material.dart';
import 'package:sipas/pages/widget/orange_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(28.0),
          child: OrangeButton(
              contentText: "test",
              minimumSize: Size(double.infinity, 48),
              maximumSize: Size(double.infinity, 48)),
        ),
      ),
    );
  }
}
