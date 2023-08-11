import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/pages/widget/orange_button.dart';

class AjukanBantuanTab extends StatelessWidget {
  const AjukanBantuanTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 5),
            child: Text(
              'Ajukan Bantuan Disini',
              style: heading1(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: Text(
              'Anda dapat mengajukan bantuan pada fasilitas kesehatan yang terhubung denganmu melalui tombol dibawah',
              style: bodyMedium(
                sizeFont: 14,
                colorFont: greyColor,
              ),
            ),
          ),
          OrangeButton(
            contentText: 'Ajukan Bantuan',
            minimumSize: const Size(328, 48),
            maximumSize: const Size(double.infinity, 48),
            onPressedFunc: () => Navigator.pushNamed(context, formBantuanPage),
          )
        ],
      ),
    );
  }
}
