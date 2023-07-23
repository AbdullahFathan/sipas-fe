import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/pages/auth/widget/text_form.dart';
import 'package:sipas/pages/widget/orange_button.dart';
import 'package:sipas/pages/widget/outline_custom_button.dart';

class MedicalFacilityConnect extends StatefulWidget {
  const MedicalFacilityConnect({super.key});

  @override
  State<MedicalFacilityConnect> createState() => _MedicalFacilityConnectState();
}

class _MedicalFacilityConnectState extends State<MedicalFacilityConnect> {
  final TextEditingController _numberTextEditing = TextEditingController();
  @override
  void dispose() {
    _numberTextEditing.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 2),
              child: Text(
                "Hubungkan Dengan Faskes",
                style: heading1(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Text(
                "Untuk terhubung dengan fasilitas kesehatan terdekat, masukkan kode unik fasilitas kesehatan",
                style: bodyMedium(
                  sizeFont: 14,
                  colorFont: greyColor,
                ),
              ),
            ),
            TextForm(
                textEditingController: _numberTextEditing,
                hintText: 'Kode Unik',
                subText: 'Pastikan kode unik yang Anda masukkan benar'),
            Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Text(
                "Maaf, kode unik yang Anda masukkan tidak terdaftar",
                style: bodyMedium(
                  sizeFont: 12,
                  colorFont: erorColor,
                ),
              ),
            ),
            OrangeButton(
              contentText: 'Hubungkan Sekarang',
              minimumSize: const Size(348, 48),
              maximumSize: const Size(double.infinity, 48),
              onPressedFunc: () => print("has been tap"),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomOutlineButton(
              minimumSize: const Size(348, 48),
              maximumSize: const Size(double.infinity, 48),
              contentText: 'Kembali Ke Beranda',
              onTapFunc: () =>
                  Navigator.pushReplacementNamed(context, appPagesRoute),
            )
          ],
        ),
      ),
    );
  }
}
