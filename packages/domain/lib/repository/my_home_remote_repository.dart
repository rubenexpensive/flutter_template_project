import 'remote_repository.dart';

abstract class MyHomeRemoteRepository implements RemoteRepository {
  Future<int> count(int value);
}