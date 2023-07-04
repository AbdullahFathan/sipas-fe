import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/pages/auth/login_page.dart';
import 'package:sipas/pages/auth/widget/link_popup.dart';
import 'package:sipas/pages/auth/widget/text_form.dart';
import 'package:sipas/pages/widget/orange_button.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final TextEditingController _emailTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 62,
            horizontal: 16,
          ),
          child: Form(
            child: ListView(
              children: [
                // Show Logo Image
                SvgPicture.asset(
                  "assets/images/sipas_logo.svg",
                  width: 120,
                  height: 98,
                ),

                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Reset Kata Sandimu Disini",
                  style: heading1(),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Masukkan alamat email yang didaftarkan pada akun tersebut",
                  style: bodyMedium(
                    colorFont: greyColor,
                    sizeFont: 14,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //Email FLied for user
                TextForm(
                  textEditingController: _emailTextController,
                  hintText: "Email",
                  subText: "Pastikan alamat emailnya telah terverifikasi",
                ),

                //Reset  button
                OrangeButton(
                  contentText: "Reset Kata Sandi",
                  onPressedFunc: () async {
                    await linkPopUp(
                      context,
                      'Tautan Berhasil Terkirim',
                      'Silahkan ubah kata sandi Anda dengan mengklik tautan ubah kata sandi yang kami kirimkan pada email Anda',
                      'Ubah Sekarang',
                    );
                  },
                ),

                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(
                  onPressed: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (_) => const LoginPage())),
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 10),
                    minimumSize: const Size(280, 48),
                    maximumSize: const Size(328, 48),
                    side: const BorderSide(
                      width: 1,
                      color: lightVioletColor,
                    ),
                  ),
                  child: Text(
                    "Kembali Ke Menu Masuk",
                    style: headline(sizeFont: 14, colorFont: lightVioletColor),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
