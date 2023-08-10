import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/pages/auth/widget/text_form.dart';
import 'package:sipas/pages/widget/custom_date_picker.dart';
import 'package:sipas/pages/widget/outline_custom_button.dart';

class PantauKehamilanTab extends StatefulWidget {
  const PantauKehamilanTab({Key? key}) : super(key: key);

  @override
  State<PantauKehamilanTab> createState() => _PantauKehamilanTabState();
}

class _PantauKehamilanTabState extends State<PantauKehamilanTab> {
  final TextEditingController _nameTextController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _nameTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return showDataKehamilan();
  }
}

Widget addDataKehamilan(TextEditingController textEditingController) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 14),
            child: Text(
              "Tambahkan Data Kehamilan",
              style: heading1(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Image.asset("assets/images/hamil.jpg"),
          ),
          TextForm(
            textEditingController: textEditingController,
            hintText: 'Nama Calon Bayi',
            subText: 'Masukkan nama calon bayi Anda',
          ),
          const CustomDatePicker(
            subTitlel: 'Pilih tanggal hari pertama dari haid terakhir Anda',
            title: 'Hari Pertama Haid Terakhir',
          )
        ],
      ),
    );

Widget showDataKehamilan() => Padding(
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
    );
