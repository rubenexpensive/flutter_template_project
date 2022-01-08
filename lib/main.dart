import 'package:flutter/material.dart';
import 'package:flutter_template_project/application/my_app.dart';
import 'environment/environment.dart';

void main() {
  final environment = _getEnvironment();
  runApp(MyApp(environment: environment));
}

Environment _getEnvironment() {
  switch(const String.fromEnvironment('environment', defaultValue: 'prod')) {
    case 'dev': return DevEnvironment();
    case 'mock': return MockEnvironment();
    case 'prod': return ProdEnvironment();
    default: return ProdEnvironment();
  }
}