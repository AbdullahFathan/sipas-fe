part of 'pregnancy_cubit.dart';

@immutable
sealed class PregnancyState {}

final class PregnancyInitial extends PregnancyState {}

class HasPregnancyData extends PregnancyState {
  final String name;
  final String date;

  HasPregnancyData(this.name, this.date);
}

final class DontPregnancyData extends PregnancyState {}

final class AddPregnancyDataLoading extends PregnancyState {}

final class AddPregnancyDataSuccess extends PregnancyState {}

final class AddPregnancyDataEror extends PregnancyState {
  final String text;

  AddPregnancyDataEror(this.text);
}
