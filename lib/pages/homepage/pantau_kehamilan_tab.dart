import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sipas/config/color_theme.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/cubit/health/health_cubit.dart';
import 'package:sipas/cubit/pregnancy/pregnancy_cubit.dart';
import 'package:sipas/pages/auth/widget/text_form.dart';
import 'package:sipas/pages/widget/connected_faskes_widget.dart';
import 'package:sipas/pages/widget/custom_date_picker.dart';
import 'package:sipas/pages/widget/orange_button.dart';
import 'package:sipas/pages/widget/outline_custom_button.dart';

class PantauKehamilanTab extends StatefulWidget {
  const PantauKehamilanTab({Key? key}) : super(key: key);

  @override
  State<PantauKehamilanTab> createState() => _PantauKehamilanTabState();
}

class _PantauKehamilanTabState extends State<PantauKehamilanTab> {
  final TextEditingController _nameTextController = TextEditingController();
  DateTime? _selectedHaidDate;

  void _handleHaidDateSelected(DateTime? date) {
    setState(() {
      _selectedHaidDate = date;
    });
  }

  @override
  void initState() {
    context.read<PregnancyCubit>().hasPrenangcyData();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _nameTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HealthCubit, HealthState>(
      builder: (context, state) {
        if (state is HasConnectedFakes) {
          return BlocBuilder<PregnancyCubit, PregnancyState>(
            builder: (context, state) {
              if (state is DontPregnancyData) {
                return addDataKehamilan(_nameTextController);
              } else if (state is HasPregnancyData) {
                return showDataKehamilan(
                    context, state.name, state.date, periksaHamilRoute);
              } else if (state is AddPregnancyDataSuccess) {
                context.read<PregnancyCubit>().hasPrenangcyData();
              }
              return Container();
            },
          );
        }
        return const ConnectedFaskesWidget();
      },
    );
  }

  Widget addDataKehamilan(TextEditingController textEditingController) =>
      Padding(
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
            CustomDatePicker(
              subTitlel: 'Pilih tanggal hari pertama dari haid terakhir Anda',
              title: 'Hari Pertama Haid Terakhir',
              onDateSelected: _handleHaidDateSelected,
            ),
            OrangeButton(
              contentText: "Simpan",
              minimumSize: const Size(328, 48),
              maximumSize: const Size(double.infinity, 48),
              onPressedFunc: () {
                if (textEditingController.text.isNotEmpty &&
                    _selectedHaidDate != null) {
                  context.read<PregnancyCubit>().addPrenagcyData(
                      textEditingController.text, _selectedHaidDate.toString());
                }
              },
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      );
}

Widget showDataKehamilan(
  BuildContext ctx,
  String name,
  String date,
  String route,
) =>
    Padding(
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
            onTapFunc: () => Navigator.pushNamed(ctx, route, arguments: name),
            childWidget: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  name,
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
