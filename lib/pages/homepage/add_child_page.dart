import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sipas/config/font_theme.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/cubit/child/child_cubit.dart';
import 'package:sipas/pages/widget/add_data_anak.dart';
import 'package:sipas/pages/widget/app_bar.dart';

class AddChildPage extends StatelessWidget {
  const AddChildPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: customAppBar(context, "Tambah Data Anak"),
        body: BlocConsumer<ChildCubit, ChildState>(
          listener: (context, state) {
            if (state is AddChildDataSuccess) {
              Navigator.pushReplacementNamed(context, pantauAnakRoute);
            }
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      "Tambahkan Data Anak",
                      style: heading1(),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 24),
                      child: Image.asset("assets/images/hamil2.jpg"),
                    ),
                    const AddDataAnakWidget(),
                    const SizedBox(
                      height: 15,
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
