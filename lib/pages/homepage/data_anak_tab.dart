import 'package:flutter/material.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/pages/auth/widget/text_form.dart';
import 'package:sipas/pages/widget/custom_date_picker.dart';
import 'package:sipas/pages/widget/custom_dropdown.dart';
import 'package:sipas/pages/widget/orange_button.dart';
import 'package:sipas/pages/widget/outline_custom_button.dart';

class DataAnakTab extends StatefulWidget {
  const DataAnakTab({super.key});

  @override
  State<DataAnakTab> createState() => _DataAnakTabState();
}

class _DataAnakTabState extends State<DataAnakTab> {
  final TextEditingController _nameTextController = TextEditingController();
  final TextEditingController _weightTextController = TextEditingController();
  final TextEditingController _longTextController = TextEditingController();
  final TextEditingController _headBabyTextController = TextEditingController();

  @override
  void dispose() {
    _nameTextController.dispose();
    _weightTextController.dispose();
    _longTextController.dispose();
    _headBabyTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double screenSize = MediaQuery.sizeOf(context).width;
    return showProfileAnak(screenSize, context);
  }
}

Widget addDataAnak(
  TextEditingController nameTextController,
  TextEditingController weightTextController,
  TextEditingController longTextController,
  TextEditingController headBabyTextController,
) =>
    SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Tambahkan Data Kehamilan",
              style: heading1(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Image.asset("assets/images/hamil2.jpg"),
            ),

            //name flied
            TextForm(
                textEditingController: nameTextController,
                hintText: 'Nama Anak',
                subText: 'Masukkan nama anak Anda'),

            //child date birth
            const CustomDatePicker(
              title: 'Tanggal Lahir Anak',
              subTitlel: 'Pilih tanggal lahir dari anak Anda',
            ),

            //dropdown child gender
            const CustomDropDown(
              data: ["Laki-Laki", "Perempuan"],
              labelText: 'Laki-Laki',
              subText: 'Pilih jenis kelamin dari anak Anda',
            ),

            //kondisi lahir anak
            const CustomDropDown(
              data: ["Sehat", "Tidak Sehat"],
              labelText: 'Kondisi Lahir',
              subText: 'Pilih kondisi lahir dari anak Anda',
            ),

            //berat badan anak
            TextForm(
                textEditingController: weightTextController,
                hintText: 'Berat Badan Lahir',
                subText: 'Masukkan berat badan lahir anak dalam kg'),

            //panjang badan anak
            TextForm(
                textEditingController: longTextController,
                hintText: 'Panjang Badan Lahir',
                subText: 'Masukkan panjang badan lahir anak dalam cm'),

            //lingkar anak
            TextForm(
                textEditingController: headBabyTextController,
                hintText: 'Lingkar Kepala',
                subText: 'Masukkan keliling lingkar kepala dalam cm')
          ],
        ),
      ),
    );

Widget showProfileAnak(
  double screen,
  BuildContext ctx,
) =>
    Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: Text(
              "Profil Anak Saya",
              style: heading1(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 2,
              bottom: 16,
            ),
            child: Text(
              'Berikut adalah profil dari anak-anakmu, jika Anda punya anak lagi, Anda dapat menambahkan datanya dengan menekan tombol oren dibawah',
              style: bodyMedium(sizeFont: 14, colorFont: greyColor),
            ),
          ),
          CustomOutlineButton(
            minimumSize: const Size(318, 48),
            maximumSize: const Size(double.infinity, 48),
            onTapFunc: () => Navigator.pushNamed(ctx, periksaAnakRoute),
            childWidget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Arsya Ramadhan',
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
          ),
          const SizedBox(
            height: 16,
          ),
          OrangeButton(
            contentText: 'Tambah Data Anak Lagi',
            minimumSize: const Size(328, 48),
            maximumSize: Size(screen, 48),
            onPressedFunc: () => print('has been tap'),
          )
        ],
      ),
    );
