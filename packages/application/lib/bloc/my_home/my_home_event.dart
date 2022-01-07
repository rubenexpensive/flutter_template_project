part of 'my_home_bloc.dart';

@immutable
abstract class MyHomeEvent {}

class CountEvent extends MyHomeEvent {
  final int value;
  CountEvent(this.value);
}