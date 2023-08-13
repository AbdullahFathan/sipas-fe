import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sipas/data/model/child_data.dart';
import 'package:sipas/services/cahce_services.dart';
import 'package:sipas/services/key_chace.dart';

part 'child_state.dart';

class ChildCubit extends Cubit<ChildState> {
  ChildCubit() : super(ChildInitial());

  void hasChildData() async {
    var response = await Cache.getData(childData);

    if (response != null) {
      for (var item in response) {
        Child dataJson = Child.fromJson(item);

        bool exists = userChidlData.any((existingData) {
          return existingData.name == dataJson.name &&
              existingData.birthDate == dataJson.birthDate;
        });

        if (!exists) {
          userChidlData.add(dataJson);
        }
      }
      emit(HasChildData());
    } else {
      emit(DontChildData());
    }
  }

  void addChildUserData(Child userData) async {
    List<Map<String, dynamic>> childJson = [];
    try {
      emit(AddChildDataLoading());
      userChidlData.add(userData);
      for (var item in userChidlData) {
        var rawData = item.toJson();
        childJson.add(rawData);
      }
      await Cache.writeData(key: childData, value: childJson);
      emit(AddChildDataSuccess());
    } catch (eror) {
      emit(AddChildDataEror(eror.toString()));
    }
  }
}
