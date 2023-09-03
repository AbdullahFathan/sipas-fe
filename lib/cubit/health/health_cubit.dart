import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sipas/data/model/user.dart';
import 'package:sipas/services/health_services.dart';

part 'health_state.dart';

class HealthCubit extends Cubit<HealthState> {
  HealthCubit() : super(HealthInitial());

  final HealthServices _healthServices = HealthServices();

  void isConnextedFakes() async {
    currUser.data.isConnectedWithFaskes
        ? emit(HasConnectedFakes())
        : emit(DontConnectedFakes());
  }

  void connedtedfakes(String code) async {
    try {
      print("masuk cubit");
      emit(LoadingConnectedFakes());
      var response = await _healthServices.connedtedfakes(code);
      response
          ? emit(HasConnectedFakes())
          : emit(ErorConnectedFakes("Fail to connect"));
      print("keluar cubit ");
    } catch (eror) {
      emit(ErorConnectedFakes(eror.toString()));
    }
  }
}
