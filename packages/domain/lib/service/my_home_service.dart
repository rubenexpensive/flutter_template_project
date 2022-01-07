import 'package:domain/repository/my_home_remote_repository.dart';

class MyHomeService {
  final MyHomeRemoteRepository _remoteRepository;
  MyHomeService(this._remoteRepository);

  Future<int> count(int value) async {
    return await _remoteRepository.count(value);
  }
}