import 'package:bloc/bloc.dart';
import 'package:sipas/services/cahce_services.dart';
import 'package:sipas/services/key_chace.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  void isHasLogin() async {
    try {
      final response = await Cache.getData(userToken);

      response != null ? emit(Authenticated()) : emit(Unathenticated());
    } catch (eror) {
      emit(AuthEror("There is eror : ${eror.toString()}"));
    }
  }

  void loginServices() async {
    try {
      emit(AuthLoading());
      await Cache.writeData(key: userToken, value: 'sudah_login');
      emit(AuthSucess());
    } catch (eror) {
      emit(AuthEror("There is eror : ${eror.toString()}"));
    }
  }

  void logoutServices() async {
    try {
      emit(AuthLoading());
      await Cache.deleteData(userToken);
      await Cache.deleteData(alreadyConneted);
      emit(AuthSucess());
    } catch (eror) {
      emit(AuthEror("There is eror : ${eror.toString()}"));
    }
  }
}
