import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sipas/data/dummy/detail_recipes.dart';
import 'package:sipas/services/cahce_services.dart';
import 'package:sipas/services/key_chace.dart';

part 'recipes_state.dart';

class RecipesCubit extends Cubit<RecipesState> {
  RecipesCubit() : super(RecipesInitial());

  void readRecepiesBook() async {
    try {
      var response = await Cache.getData(recepiesData);
      if (response != null) {
        for (var item in response) {
          DetailRecipesDummy dataJson = DetailRecipesDummy.fromJson(item);

          bool exists = favoritRecepies.any((existingData) {
            return existingData.title == dataJson.title &&
                existingData.image == dataJson.image;
          });

          if (!exists) {
            favoritRecepies.add(dataJson);
          }
        }
        emit(ReadRecipesSuccess());
      } else {
        emit(ReadRecipesEror("there is no data"));
      }
    } catch (eror) {
      emit(ReadRecipesEror(eror.toString()));
    }
  }

  void addBookmark(DetailRecipesDummy recipesDummy) async {
    List<Map<String, dynamic>> articelJson = [];
    try {
      emit(AddRecipesLoading());
      favoritRecepies.add(recipesDummy);
      for (var item in favoritRecepies) {
        var rawData = item.toJson();
        articelJson.add(rawData);
      }

      await Cache.writeData(key: recepiesData, value: articelJson);
      emit(AddRecipesSuccess());
    } catch (eror) {
      emit(AddRecipesEror(eror.toString()));
    }
  }

  void removeBookmark(DetailRecipesDummy recipesDummy) async {
    List<Map<String, dynamic>> articelJson = [];
    try {
      emit(AddRecipesLoading());
      favoritRecepies.remove(recipesDummy);
      for (var item in favoritRecepies) {
        var rawData = item.toJson();
        articelJson.add(rawData);
      }

      await Cache.writeData(key: recepiesData, value: articelJson);
      emit(AddRecipesSuccess());
    } catch (eror) {
      emit(AddRecipesEror(eror.toString()));
    }
  }
}
