import 'package:flutter/material.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/pages/widget/orange_button.dart';

class ErorPage extends StatelessWidget {
  const ErorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "EROR PAGE",
              style: heading1(),
            ),
            const SizedBox(
              height: 15,
            ),

            //Message Eror
            Text(
              "Halaman yang ingin dituju belum bisa diakses saat ini",
              style: bodyMedium(),
            ),
            const SizedBox(
              height: 25,
            ),
            OrangeButton(
                contentText: "Kembali Halaman Sebelum",
                minimumSize: const Size(348, 48),
                maximumSize: const Size(double.infinity, 48),
                onPressedFunc: () =>
                    Navigator.pushReplacementNamed(context, appPagesRoute)),
          ],
        ),
      ),
    );
  }
}
