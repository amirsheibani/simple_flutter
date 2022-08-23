
import 'package:simple/core/base/data/model/base_response.dart';
import 'package:simple/features/myip/data/remote/model/ip_entity.model.g.dart';

abstract class IpRemoteDataSource {
  Future<BaseResponse<IpModel?>> requestGetIpFromServer();

}