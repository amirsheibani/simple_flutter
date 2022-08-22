
import 'package:simple/core/base/data/model/base_response.dart';
import 'package:simple/features/myip/domain/entity/ip_entity.dart';

abstract class IpRemoteDataSource {
  Future<BaseResponse<IpModel?>> requestGetIpFromServer();

}