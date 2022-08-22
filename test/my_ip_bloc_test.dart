import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:simple/core/di/network/network_state/result/api_result.dart';
import 'package:simple/features/myip/domain/entity/ip_entity.dart';
import 'package:simple/features/myip/domain/usecase/my_ip_usecase.dart';
import 'package:simple/features/myip/presentation/manager/bloc/my_ip_bloc.dart';
import 'package:simple/features/myip/presentation/manager/bloc/my_ip_bloc_event.dart';
import 'package:simple/features/myip/presentation/manager/bloc/my_ip_bloc_state.dart';

class MyIPUseCaseMock extends Mock implements MyIPUseCase {}

main() {
  group('bloc MyIp', () {
    late MyIPUseCaseMock myIPUseCaseMock;
    late MyIpBloc myIpBloc;
    final IpEntity? tIpEntity;


    setUp(() {
      myIPUseCaseMock = MyIPUseCaseMock();
      myIpBloc = MyIpBloc(myIPUseCaseMock);
    });

    tIpEntity = IpEntity(ip:'160.20.152.46',country: 'Netherlands',cc: 'NL');

    tearDown(() {
      myIpBloc.close();
    });

    test('bloc should have initial state as [MyIpBlocState.idle()]', () {
      expect(myIpBloc.state, equals(const MyIpBlocState.idle()));
    });

    blocTest<MyIpBloc, MyIpBlocState>(
        'should emit [MyIpBlocState.loading(),MyIpBlocState.success(data: data)]',
        build: () {
          when(myIPUseCaseMock.call).thenAnswer((_) async => ApiResult.success(data: tIpEntity));
          return myIpBloc;
        } ,
        act: (bloc) => bloc.add(const MyIpBlocEvent.call()),
        expect: () => [
          const MyIpBlocState.loading(),
          MyIpBlocState.success(data: tIpEntity),
        ]
    );
  });
}
