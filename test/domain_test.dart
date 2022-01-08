import 'package:flutter_template_project/environment/environment.dart';
import 'package:flutter_template_project/factory/repository/my_home_repository_factory.dart';
import 'package:domain/repository/my_home_remote_repository.dart';

import 'domain/service/my_home_service_test.dart';

void main() {
  MyHomeServiceTest(MyHomeRepositoryFactory(MockEnvironment()).createRemoteRepository() as MyHomeRemoteRepository);
}