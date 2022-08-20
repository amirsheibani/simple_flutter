
import 'package:mocktail/mocktail.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple/core/di/network/network_state/result/api_result.dart';
import 'package:simple/features/myip/domain/entity/ip_entity.dart';
import 'package:simple/features/myip/domain/repository/my_ip_repository.dart';
import 'package:simple/features/myip/domain/usecase/my_ip_usecase.dart';

class MockApiRepository extends Mock implements ApiRepository {

}

Future<void> main() async {
  late MyIPUseCase myIPUseCase;
  late ApiRepository mockApiRepository;
  final IpEntity? tIpEntity;

  setUp(() {
    mockApiRepository = MockApiRepository();
    myIPUseCase = MyIPUseCase(mockApiRepository);
  });

  tIpEntity = IpEntity(ip:'160.20.152.46',country: 'Netherlands',cc: 'NL');

  test('should get ip address from the repository', () async {

    when(mockApiRepository.myIpFetchFromServer).thenAnswer((_) async => ApiResult.success(data: tIpEntity));

    final result = await myIPUseCase.call();

    expect(result, ApiResult.success(data: tIpEntity));
    verify(mockApiRepository.myIpFetchFromServer);
    verifyNoMoreInteractions(mockApiRepository);

  });
}