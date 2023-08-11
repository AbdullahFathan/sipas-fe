import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/pages/widget/outline_custom_button.dart';

class DataPregnacyUser extends StatelessWidget {
  const DataPregnacyUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 34),
                    child: Text(
                      "Profil Kehamilan Saya",
                      style: heading1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 2,
                      bottom: 16,
                    ),
                    child: Text(
                      'Berikut adalah profil dari calon bayimu',
                      style: bodyMedium(sizeFont: 14, colorFont: greyColor),
                    ),
                  ),
                  CustomOutlineButton(
                    minimumSize: const Size(318, 48),
                    maximumSize: const Size(double.infinity, 48),
                    onTapFunc: () =>
                        Navigator.pushNamed(context, detailPrenagcyUser),
                    childWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Hana Trisninda',
                          style: headline(
                            sizeFont: 14,
                            colorFont: violetColor,
                          ),
                        ),
                        const Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: greyColor,
                          size: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
