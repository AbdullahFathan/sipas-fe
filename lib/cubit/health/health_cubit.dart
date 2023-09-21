import 'package:bloc/bloc.dart';
import 'package:sipas/data/model/user.dart';
import 'package:sipas/services/health_services.dart';

part 'health_state.dart';

class HealthCubit extends Cubit<HealthState> {
  HealthCubit() : super(HealthInitial());

  final HealthServices _healthServices = HealthServices();

  void isConnextedFakes() async {
    print(22);
    if (currUser.data.isConnectedWithFaskes) {
      print(23);
      emit(LoadingConnectedFakes());
      var res = await _healthServices.fetchFaskesName();
      if (res) emit(HasConnectedFakes());
    } else {
      emit(DontConnectedFakes());
    }
    print(24);
  }

  void connedtedfakes(String code) async {
    try {
      emit(LoadingConnectedFakes());
      var response = await _healthServices.connedtedfakes(code);
      response
          ? emit(SuccessConnectedFakes())
          : emit(ErorConnectedFakes("Fail to connect"));
    } catch (eror) {
      emit(ErorConnectedFakes(eror.toString()));
    }
  }
}
