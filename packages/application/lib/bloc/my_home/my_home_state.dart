part of 'my_home_bloc.dart';

@immutable
abstract class MyHomeState {}

class MyHomeInitial extends MyHomeState {}

class MyHomeLoading extends MyHomeState {}

class MyHomeError extends MyHomeState {
  final String message;
  MyHomeError(this.message);
}

class MyHomeSuccess extends MyHomeState {
  final int counter;
  MyHomeSuccess(this.counter);
}