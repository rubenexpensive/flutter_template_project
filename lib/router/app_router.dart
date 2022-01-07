import 'package:flutter/material.dart';
import 'package:flutter_template_project/environment/environment.dart';
import 'package:flutter_template_project/factory/bloc/my_home_bloc_factory.dart';

class AppRouter {
  static const myHomeRoute = '/';

  final Environment environment;
  AppRouter(this.environment);

  late final _myHomeBlocFactory = MyHomeBlocFactory(environment);

  Route<dynamic> getRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (_) => _getPage(settings));
  }

  Widget _getPage(RouteSettings settings) {
    switch(settings.name) {
      case myHomeRoute: return _myHomeBlocFactory.createBloc(); 
      default: return _myHomeBlocFactory.createBloc();
    }
  }
  
  
}