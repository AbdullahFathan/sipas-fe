part of 'recipes_cubit.dart';

@immutable
sealed class RecipesState {}

final class RecipesInitial extends RecipesState {}

final class AddRecipesSuccess extends RecipesState {}

final class AddRecipesLoading extends RecipesState {}

final class AddRecipesEror extends RecipesState {
  final String text;

  AddRecipesEror(this.text);
}

final class ReadRecipesSuccess extends RecipesState {}

final class ReadRecipesLoading extends RecipesState {}

final class ReadRecipesEror extends RecipesState {
  final String text;

  ReadRecipesEror(this.text);
}
