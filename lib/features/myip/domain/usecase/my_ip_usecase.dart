import 'package:injectable/injectable.dart';
import 'package:simple/core/base/domin/usecase/base_usecase.dart';
import 'package:simple/core/di/network/network_state/result/api_result.dart';
import 'package:simple/features/myip/domain/entity/ip_entity.dart';
import 'package:simple/features/myip/domain/repository/my_ip_repository.dart';


@singleton
class MyIPUseCase extends BaseUseCaseNoArgs<ApiResult<IpEntity?>> {
  MyIPUseCase(
      this._apiRepository,
      );

  final ApiRepository _apiRepository;

  @override
  Future<ApiResult<IpEntity?>> call() async {
    final ApiResult<IpEntity?> result = await _apiRepository.myIpFetchFromServer();
    return result;
  }
}