import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
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
  final TextEditingController _motherNameTextController =
      TextEditingController();
  final TextEditingController _fatherNameTextController =
      TextEditingController();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _motherNameTextController.dispose();
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
                Image.asset(
                  "assets/images/sipas_logo.jpg",
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

                //mother name flied for user
                TextForm(
                    textEditingController: _motherNameTextController,
                    hintText: "Nama Lengkap Ibu",
                    subText: "Masukkan sesuai dengan nama anda di KTP"),
                //father name flied for user
                TextForm(
                    textEditingController: _fatherNameTextController,
                    hintText: "Nama Lengkap Ayah",
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
