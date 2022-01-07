import 'dart:math';

import 'package:domain/repository/my_home_remote_repository.dart';

class MyHomeRemoteRepositoryReal extends MyHomeRemoteRepository {
  @override
  Future<int> count(int value) async {
    await Future.delayed(const Duration(seconds: 2));
    if(Random().nextBool()) throw Exception();
    return value += Random().nextInt(10);
  }
}