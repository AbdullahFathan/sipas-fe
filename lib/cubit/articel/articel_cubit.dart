import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sipas/data/dummy/articel.dart';
import 'package:sipas/services/cahce_services.dart';
import 'package:sipas/services/key_chace.dart';

part 'articel_state.dart';

class ArticelCubit extends Cubit<ArticelState> {
  ArticelCubit() : super(ArticelInitial());

  void readArticelBook() async {
    try {
      var response = await Cache.getData(articelData);
      if (response != null) {
        for (var item in response) {
          Articel dataJson = Articel.fromJson(item);

          bool exists = favoritArticel.any((existingData) {
            return existingData.title == dataJson.title &&
                existingData.date == dataJson.date;
          });

          if (!exists) {
            favoritArticel.add(dataJson);
          }
        }
        emit(ReadArticelBookSuccess());
      } else {
        emit(ReadArticelBookEror("There is no data"));
      }
    } catch (eror) {
      emit(ReadArticelBookEror(eror.toString()));
    }
  }

  void addBookmark(Articel articel) async {
    List<Map<String, dynamic>> articelJson = [];
    try {
      emit(AddArticelBookLoading());
      favoritArticel.add(articel);
      for (var item in favoritArticel) {
        var rawData = item.toJson();
        articelJson.add(rawData);
      }

      await Cache.writeData(key: articelData, value: articelJson);
      emit(AddArticelBookSucess());
    } catch (eror) {
      emit(AddArticelBookEror(eror.toString()));
    }
  }

  void removeBookmark(Articel articel) async {
    List<Map<String, dynamic>> articelJson = [];
    try {
      emit(AddArticelBookLoading());
      favoritArticel.remove(articel);
      for (var item in favoritArticel) {
        var rawData = item.toJson();
        articelJson.add(rawData);
      }

      await Cache.writeData(key: articelData, value: articelJson);
      emit(AddArticelBookSucess());
    } catch (eror) {
      emit(AddArticelBookEror(eror.toString()));
    }
  }
}
