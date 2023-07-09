import 'package:flutter/material.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/pages/auth/widget/text_form.dart';
import 'package:sipas/pages/widget/custom_date_picker.dart';

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
    return Padding(
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
            textEditingController: _nameTextController,
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
  }
}
