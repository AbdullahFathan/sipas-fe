import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sipas/services/cahce_services.dart';
import 'package:sipas/services/key_chace.dart';

part 'health_state.dart';

class HealthCubit extends Cubit<HealthState> {
  HealthCubit() : super(HealthInitial());

  void isConnextedFakes() async {
    var response = await Cache.getData(alreadyConneted);

    response != null ? emit(HasConnectedFakes()) : emit(DontConnectedFakes());
  }

  void connedtedfakes() async {
    try {
      await Cache.writeData(key: alreadyConneted, value: "Sudah");
      emit(HasConnectedFakes());
    } catch (eror) {
      emit(ErorConnectedFakes(eror.toString()));
    }
  }
}
