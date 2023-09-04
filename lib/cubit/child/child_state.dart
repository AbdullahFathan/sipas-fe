part of 'child_cubit.dart';

sealed class ChildState {}

final class ChildInitial extends ChildState {}

final class HasChildData extends ChildState {}

final class DontChildData extends ChildState {}

final class AddChildDataLoading extends ChildState {}

final class AddChildDataSuccess extends ChildState {}

final class AddChildDataEror extends ChildState {
  final String text;

  AddChildDataEror(this.text);
}
