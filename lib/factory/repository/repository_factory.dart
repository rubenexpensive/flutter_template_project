import 'package:domain/repository/remote_repository.dart';

abstract class RepositoryFactory {
  RemoteRepository createRemoteRepository();
}