import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/pages/auth/forgot_pass_page.dart';
import 'package:sipas/pages/auth/register_page.dart';
import 'package:sipas/pages/auth/widget/password_form.dart';
import 'package:sipas/pages/auth/widget/tap_text.dart';
import 'package:sipas/pages/auth/widget/text_form.dart';
import 'package:sipas/pages/widget/orange_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  bool showEror = false;

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 62,
              horizontal: 16,
            ),
            child: Form(
              child: Column(
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
                    "Selamat Datang",
                    style: heading1(),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    "Masuk ke akun Anda untuk dapat menggunakan layanan kami",
                    style: bodyMedium(
                      colorFont: greyColor,
                      sizeFont: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

                  //Email Field for user
                  TextForm(
                    textEditingController: _emailTextController,
                    hintText: "Email",
                    subText: "Pastikan alamat emailnya telah terverifikasi",
                  ),

                  //Password Field for user
                  PasswordForm(
                    textEditingController: _passwordTextController,
                    hintText: "Kata Sandi",
                    subText: "Pastikan kata sandi yang dimasukkan benar",
                  ),

                  //Forgot Password Text
                  TapText(
                    text1: null,
                    text2: "Lupa Kata Sandi?",
                    textAlign: TextAlign.end,
                    padding: 16,
                    onTapFunc: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ForgotPasswordPage(),
                        ),
                      );
                    },
                  ),

                  //Error message for wrong email or password
                  Visibility(
                    visible: showEror,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 16, bottom: 20),
                      child: Text(
                        "Maaf, email atau kata sandi yang Anda masukkan salah",
                        style: bodyMedium(
                          colorFont: erorColor,
                          sizeFont: 12,
                        ),
                      ),
                    ),
                  ),

                  //Login Button
                  OrangeButton(
                    contentText: "Masuk",
                    onPressedFunc: () {
                      if (_emailTextController.text != "admin" &&
                          _passwordTextController.text != "admin") {
                        setState(() {
                          showEror = true;
                        });
                      }
                    },
                  ),

                  const TapText(
                    text1: "Atau masuk dengan",
                    text2: null,
                    padding: 20,
                  ),

                  //Sign in with Google
                  OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 10,
                      ),
                      minimumSize: const Size(280, 48),
                      maximumSize: const Size(328, 48),
                      side: const BorderSide(
                        width: 1,
                        color: lightVioletColor,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/google.svg",
                          width: 20,
                          height: 20,
                        ),
                        const SizedBox(
                          width: 24,
                        ),
                        Text(
                          "Masuk dengan Google",
                          style: headline(
                            sizeFont: 14,
                            colorFont: lightVioletColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //Tap Text
                  TapText(
                    text1: "Belum punya akun?",
                    text2: "Daftar",
                    padding: 28,
                    onTapFunc: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const RegisterPage(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
