import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/pages/auth/widget/text_form.dart';
import 'package:sipas/pages/widget/another_popup.dart';
import 'package:sipas/pages/widget/app_bar.dart';
import 'package:sipas/pages/widget/custom_date_picker.dart';
import 'package:sipas/pages/widget/orange_button.dart';
import 'package:sipas/pages/widget/outline_custom_button.dart';

class EditPrenagcyData extends StatefulWidget {
  const EditPrenagcyData({super.key});

  @override
  State<EditPrenagcyData> createState() => _EditPrenagcyDataState();
}

class _EditPrenagcyDataState extends State<EditPrenagcyData> {
  final TextEditingController _nameTextController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'Data Profil Kehamilan/Anak Saya'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Text(
                      "Edit Data Kehamilan",
                      style: heading1(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: Image.asset("assets/images/hamil.jpg"),
                  ),
                  TextForm(
                    textEditingController: _nameTextController,
                    hintText: 'Nama Calon Bayi',
                    subText: 'Masukkan nama calon bayi Anda',
                  ),
                  const CustomDatePicker(
                    subTitlel:
                        'Pilih tanggal hari pertama dari haid terakhir Anda',
                    title: 'Hari Pertama Haid Terakhir',
                  )
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                children: [
                  OrangeButton(
                    contentText: "Simpan Perubahan",
                    minimumSize: const Size(328, 48),
                    maximumSize: const Size(double.infinity, 48),
                    onPressedFunc: () async {
                      await anotherPopUP(
                          context,
                          'Perubahan Tersimpan',
                          'Perubahan profil data pada calon bayi Anda berhasil dilakukan dan telah tersimpan',
                          [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Oke",
                                style: headline(
                                  colorFont: violetColor,
                                  sizeFont: 14,
                                ),
                              ),
                            ),
                          ]);
                    },
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
                    height: 30,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
