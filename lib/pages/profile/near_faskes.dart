import 'package:flutter/material.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/pages/widget/orange_button.dart';

class NearFaskesPage extends StatelessWidget {
  const NearFaskesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/images/terhubung.jpg"),
        const SizedBox(
          height: 50,
        ),
        OrangeButton(
          contentText: "Kembali",
          minimumSize: const Size(328, 48),
          maximumSize: const Size(double.infinity, 48),
          onPressedFunc: () =>
              Navigator.pushReplacementNamed(context, appPagesRoute),
        )
      ],
    ));
  }
}
