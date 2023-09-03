import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sipas/cubit/child/child_cubit.dart';
import 'package:sipas/data/model/child_data.dart';
import 'package:sipas/pages/auth/widget/text_form.dart';
import 'package:sipas/pages/widget/custom_date_picker.dart';
import 'package:sipas/pages/widget/custom_dropdown.dart';
import 'package:sipas/pages/widget/orange_button.dart';

class AddDataAnakWidget extends StatefulWidget {
  const AddDataAnakWidget({super.key});

  @override
  State<AddDataAnakWidget> createState() => _AddDataAnakWidgetState();
}

class _AddDataAnakWidgetState extends State<AddDataAnakWidget> {
  final TextEditingController nameTextController = TextEditingController();
  final TextEditingController weightTextController = TextEditingController();
  final TextEditingController longTextController = TextEditingController();
  final TextEditingController headBabyTextController = TextEditingController();

  DateTime? _selectedDate;

  void handlDateSelected(DateTime? date) {
    setState(() {
      _selectedDate = date;
    });
  }

  String? _selectedChildGender;
  String? _selectedChildCondition;

  void _handleChildGenderSelected(String? value) {
    setState(() {
      _selectedChildGender = value;
    });
  }

  void _handleChildConditionSelected(String? value) {
    setState(() {
      _selectedChildCondition = value;
    });
  }

  bool isNotEmptyForm() {
    if (nameTextController.text.isNotEmpty &&
        weightTextController.text.isNotEmpty &&
        longTextController.text.isNotEmpty &&
        headBabyTextController.text.isNotEmpty &&
        _selectedDate != null &&
        _selectedChildCondition != null &&
        _selectedChildGender != null) {
      return true;
    }
    return false;
  }

  @override
  void dispose() {
    nameTextController.dispose();
    weightTextController.dispose();
    longTextController.dispose();
    headBabyTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //name flied
        TextForm(
            textEditingController: nameTextController,
            hintText: 'Nama Anak',
            subText: 'Masukkan nama anak Anda'),

        //child date birth
        CustomDatePicker(
          title: 'Tanggal Lahir Anak',
          subTitlel: 'Pilih tanggal lahir dari anak Anda',
          onDateSelected: handlDateSelected,
        ),

        //dropdown child gender
        CustomDropDown(
          data: const ["Laki-Laki", "Perempuan"],
          labelText: 'Laki-Laki',
          subText: 'Pilih jenis kelamin dari anak Anda',
          onValueSelected: _handleChildGenderSelected,
        ),

        //kondisi lahir anak
        CustomDropDown(
          data: const ["Sehat", "Prematur", "Terkena Virus"],
          labelText: 'Kondisi Lahir',
          subText: 'Pilih kondisi lahir dari anak Anda',
          onValueSelected: _handleChildConditionSelected,
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
            subText: 'Masukkan keliling lingkar kepala dalam cm'),
        OrangeButton(
          contentText: "Simpan",
          minimumSize: const Size(328, 48),
          maximumSize: const Size(double.infinity, 48),
          onPressedFunc: () {
            if (isNotEmptyForm()) {
              context.read<ChildCubit>().addChildUserData(Child(
                  name: nameTextController.text,
                  birthDate: _selectedDate.toString(),
                  gender: _selectedChildGender!,
                  birthCondition: _selectedChildCondition!,
                  weightChild: weightTextController.text,
                  longChild: longTextController.text,
                  headCircuChild: headBabyTextController.text));
            }
          },
        ),
        const SizedBox(
          height: 15,
        ),
      ],
    );
  }
}