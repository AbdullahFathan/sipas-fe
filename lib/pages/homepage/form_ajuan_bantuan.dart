import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/pages/auth/widget/text_form.dart';
import 'package:sipas/pages/widget/app_bar.dart';
import 'package:sipas/pages/widget/orange_button.dart';
import 'package:sipas/pages/widget/outline_custom_button.dart';

class FormAjuanBantuanPage extends StatefulWidget {
  const FormAjuanBantuanPage({super.key});

  @override
  State<FormAjuanBantuanPage> createState() => _FormAjuanBantuanPageState();
}

class _FormAjuanBantuanPageState extends State<FormAjuanBantuanPage> {
  final TextEditingController _judulTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'Ajukan'),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 24, top: 8),
              child: Text(
                'Lengkapi Form Pengajuan',
                style: heading1(),
              ),
            ),
            TextForm(
                textEditingController: _judulTextController,
                hintText: 'Judul Pengajuan',
                subText: 'Masukkan judul dari pengajuan bantuan Anda'),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: borderGreyColor,
                  width: 1,
                ),
              ),
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Deskripsi Pengajuan',
                      ),
                      keyboardType: TextInputType.multiline,
                      maxLines: null,
                      expands: true,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Masukkan deskripsi dari pengajuan bantuan Anda",
              style: bodyMedium(
                sizeFont: 14,
                colorFont: greyColor,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  OrangeButton(
                    contentText: "Simpan Perubahan",
                    minimumSize: const Size(328, 48),
                    maximumSize: const Size(double.infinity, 48),
                    onPressedFunc: () => Navigator.pop(context),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  CustomOutlineButton(
                      minimumSize: const Size(328, 48),
                      maximumSize: const Size(double.infinity, 48),
                      contentText: 'Batalkan Perubahan',
                      onTapFunc: () => Navigator.pop(context)),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
