import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sipas/data/model/help.dart';
import 'package:sipas/services/cahce_services.dart';
import 'package:sipas/services/key_chace.dart';

part 'help_state.dart';

class HelpCubit extends Cubit<HelpState> {
  HelpCubit() : super(HelpInitial());

  void fetchHelpData() async {
    emit(GetHelpLoading());
    try {
      var response = await Cache.getData(helpSubmitKey);
      if (response != null) {
        for (var item in response) {
          HelpSubmit dataJson = HelpSubmit.fromJson(item);
          bool exists = dataHelpUser.any((existingData) {
            return existingData.title == dataJson.title &&
                existingData.description == dataJson.description;
          });

          if (!exists) {
            dataHelpUser.add(dataJson);
          }
        }

        emit(GetHelpSuccess(dataHelpUser));
      } else {
        emit(DontGetHelp());
      }
    } catch (eror) {
      emit(GetHelpEror("There is eror fetchHelpData : ${eror.toString()}"));
    }
  }

  void addHelpData(HelpSubmit helpSubmit) async {
    List<Map<String, dynamic>> helpJson = [];
    emit(AddHelpLoading());
    try {
      dataHelpUser.add(helpSubmit);
      for (var item in dataHelpUser) {
        var rawData = item.toJson();
        helpJson.add(rawData);
      }

      await Cache.writeData(key: helpSubmitKey, value: helpJson);
      emit(AddHelpSuccess());
    } catch (eror) {
      emit(AddHelpEror("There is eror addHelpData : ${eror.toString()}"));
    }
  }
}
