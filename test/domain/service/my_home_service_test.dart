import 'package:flutter_test/flutter_test.dart';
import 'package:domain/repository/my_home_remote_repository.dart';
import 'package:domain/service/my_home_service.dart';

class MyHomeServiceTest {
  final MyHomeRemoteRepository remoteRepository;
  late final service = MyHomeService(remoteRepository);

  MyHomeServiceTest(this.remoteRepository) {
    testCountFromZeroSuccess();
    testCountFromPossitiveSuccess();
    testCountFromNegativeSuccess();
  }
  
  testCountFromZeroSuccess() {
    const initialValue = 0;
    const expectedValue = 1;
    test('Test count from zero, success', () async {
      final actualValue = await service.count(initialValue);
      expect(actualValue, expectedValue);
    });
  }
  
  testCountFromPossitiveSuccess() {
    const initialValue = 10;
    const expectedValue = 11;
    test('Test count from possitive, success', () async {
      final actualValue = await service.count(initialValue);
      expect(actualValue, expectedValue);
    });
  }

  
  testCountFromNegativeSuccess() {
    const initialValue = -9;
    const expectedValue = -8;
    test('Test count from negative, success', () async {
      final actualValue = await service.count(initialValue);
      expect(actualValue, expectedValue);
    });
  }
}