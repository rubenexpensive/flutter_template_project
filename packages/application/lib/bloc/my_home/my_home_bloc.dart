import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:domain/service/my_home_service.dart';

part 'my_home_event.dart';
part 'my_home_state.dart';

class MyHomeBloc extends Bloc<MyHomeEvent, MyHomeState> {
  final MyHomeService service;
  MyHomeBloc(this.service) : super(MyHomeInitial()) {
    on<CountEvent>(_onCountEvent);
  }

  FutureOr<void> _onCountEvent(CountEvent event, Emitter<MyHomeState> emit) async {
    emit(MyHomeLoading());
    try {
      final result = await service.count(event.value);
      emit(MyHomeSuccess(result));
    } catch(exception) {
      emit(MyHomeError(''));
    }
  }
}
