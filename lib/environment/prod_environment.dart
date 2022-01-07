part of 'environment.dart';

class ProdEnvironment implements Environment {
  @override
  bool get isMocked => false;
}