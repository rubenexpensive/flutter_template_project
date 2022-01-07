part 'dev_environment.dart';
part 'mock_environment.dart';
part 'prod_environment.dart';

abstract class Environment {
  abstract final bool isMocked;
}