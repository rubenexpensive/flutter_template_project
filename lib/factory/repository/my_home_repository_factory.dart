import 'package:domain/repository/remote_repository.dart';
import 'package:flutter_template_project/environment/environment.dart';
import 'package:flutter_template_project/factory/repository/repository_factory.dart';
import 'package:infrastructure/repository/mock/my_home_remote_repository_mock.dart';
import 'package:infrastructure/repository/real/my_home_remote_repository_real.dart';

class MyHomeRepositoryFactory extends RepositoryFactory {
  final Environment environment;
  MyHomeRepositoryFactory(this.environment);

  @override
  RemoteRepository createRemoteRepository() {
    return environment.isMocked ? MyHomeRemoteRepositoryMock() : MyHomeRemoteRepositoryReal();
  }

}