import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/cubit/health/health_cubit.dart';
import 'package:sipas/cubit/pregnancy/pregnancy_cubit.dart';
import 'package:sipas/pages/homepage/pantau_kehamilan_tab.dart';
import 'package:sipas/pages/widget/connected_faskes_widget.dart';

class DataPregnacyUser extends StatefulWidget {
  const DataPregnacyUser({super.key});

  @override
  State<DataPregnacyUser> createState() => _DataPregnacyUserState();
}

class _DataPregnacyUserState extends State<DataPregnacyUser> {
  @override
  void initState() {
    context.read<PregnancyCubit>().hasPrenangcyData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HealthCubit, HealthState>(
        builder: (context, state) {
          if (state is HasConnectedFakes) {
            return SingleChildScrollView(
              child: Column(
                children: [
                  BlocBuilder<PregnancyCubit, PregnancyState>(
                    builder: (context, state) {
                      if (state is HasPregnancyData) {
                        return showDataKehamilan(
                            context,
                            state.prenangcyData.namaCalonBayi,
                            state.prenangcyData.tanggalPertamaHaid.toString(),
                            periksaHamilRoute);
                      }
                      return const Center(child: Text("Tidak ada data"));
                    },
                  )
                ],
              ),
            );
          }
          return const ConnectedFaskesWidget();
        },
      ),
    );
  }
}
