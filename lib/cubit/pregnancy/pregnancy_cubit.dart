import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sipas/services/cahce_services.dart';
import 'package:sipas/services/key_chace.dart';

part 'pregnancy_state.dart';

class PregnancyCubit extends Cubit<PregnancyState> {
  PregnancyCubit() : super(PregnancyInitial());

  void hasPrenangcyData() async {
    var response = await Cache.getData(prenagcyData);

    response != null
        ? emit(HasPregnancyData(response['name'], response['date']))
        : emit(DontPregnancyData());
  }

  void addPrenagcyData(String name, String date) async {
    try {
      emit(AddPregnancyDataLoading());
      await Cache.writeData(key: prenagcyData, value: {
        'name': name,
        'date': date,
      });
      emit(AddPregnancyDataSuccess());
    } catch (eror) {
      emit(AddPregnancyDataEror(eror.toString()));
    }
  }

  void updatePrenangcyData(String name, String date) async {
    try {
      emit(AddPregnancyDataLoading());
      await Cache.writeData(key: prenagcyData, value: {
        'name': name,
        'date': date,
      });
      emit(AddPregnancyDataSuccess());
    } catch (eror) {
      emit(AddPregnancyDataEror(eror.toString()));
    }
  }

  void removePrenangcyData() async {
    await Cache.deleteData(prenagcyData);
    emit(AddPregnancyDataSuccess());
  }
}
