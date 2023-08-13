import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sipas/config/route_name.dart';
import 'package:sipas/cubit/health/health_cubit.dart';
import 'package:sipas/pages/widget/connected_faskes_widget.dart';
import 'package:sipas/pages/widget/orange_button.dart';

class NearFaskesPage extends StatelessWidget {
  const NearFaskesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<HealthCubit, HealthState>(
      builder: (context, state) {
        if (state is HasConnectedFakes) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset("assets/images/terhubung.jpg"),
              const SizedBox(
                height: 50,
              ),
              OrangeButton(
                contentText: "Kembali",
                minimumSize: const Size(328, 48),
                maximumSize: const Size(double.infinity, 48),
                onPressedFunc: () =>
                    Navigator.pushReplacementNamed(context, appPagesRoute),
              )
            ],
          );
        }
        return const ConnectedFaskesWidget();
      },
    ));
  }
}
