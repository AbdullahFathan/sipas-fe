part of 'articel_cubit.dart';

sealed class ArticelState {}

final class ArticelInitial extends ArticelState {}

final class AddArticelBookSucess extends ArticelState {}

final class AddArticelBookLoading extends ArticelState {}

final class AddArticelBookEror extends ArticelState {
  final String text;

  AddArticelBookEror(this.text);
}

final class ReadArticelBookSuccess extends ArticelState {}

final class ReadArticelBookLoading extends ArticelState {}

final class ReadArticelBookEror extends ArticelState {
  final String text;

  ReadArticelBookEror(this.text);
}
