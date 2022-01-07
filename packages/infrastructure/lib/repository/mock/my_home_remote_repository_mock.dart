import 'package:domain/repository/my_home_remote_repository.dart';

class MyHomeRemoteRepositoryMock extends MyHomeRemoteRepository {
  @override
  Future<int> count(int value) async {
    return value + 1;
  }
  
}