import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/pages/auth/login_page.dart';
import 'package:sipas/pages/auth/widget/link_popup.dart';
import 'package:sipas/pages/auth/widget/password_form.dart';
import 'package:sipas/pages/auth/widget/tap_text.dart';
import 'package:sipas/pages/auth/widget/text_form.dart';
import 'package:sipas/pages/widget/orange_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _nameTextController.dispose();
    super.dispose();
  }

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
                  "Daftar Akun",
                  style: heading1(),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  "Daftarkan akunmu agar dapat menggunakan layanan pada aplikasi kami",
                  style: bodyMedium(
                    colorFont: greyColor,
                    sizeFont: 14,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                //full name flied for user
                TextForm(
                    textEditingController: _nameTextController,
                    hintText: "Nama Lengkap",
                    subText: "Masukkan sesuai dengan nama anda di KTP"),

                //Email FLied for user
                TextForm(
                  textEditingController: _emailTextController,
                  hintText: "Email",
                  subText: "Masukkan alamat email aktif anda",
                ),

                //password flied for user
                PasswordForm(
                  textEditingController: _passwordTextController,
                  hintText: "Kata Sandi",
                  subText: "Masukkan kata sandi yang ingin anda buat",
                ),

                //register button
                OrangeButton(
                  maximumSize: const Size(328, 48),
                  minimumSize: const Size(270, 48),
                  contentText: "Daftar",
                  onPressedFunc: () async {
                    await linkPopUp(
                      context,
                      'Akun Berhasil Didaftarkan',
                      'Silahkan lakukan verifikasi akun dengan mengklik tautan verifikasi yang kami kirimkan pada email Anda',
                      'Verifikasi Sekarang',
                    );
                  },
                ),

                //tap text
                TapText(
                  text1: "Sudah punya akun?",
                  text2: "Masuk",
                  padding: 28,
                  onTapFunc: () {
                    Navigator.pushNamed(context, loginRoute);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
