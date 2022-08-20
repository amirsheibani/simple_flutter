
import 'package:simple/core/di/network/network_state/result/api_result.dart';
import 'package:simple/features/myip/domain/entity/ip_entity.dart';

abstract class ApiRepository {
  Future<ApiResult<IpEntity?>> myIpFetchFromServer();
}