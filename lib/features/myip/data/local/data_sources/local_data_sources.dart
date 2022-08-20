
import 'package:simple/core/base/data/model/base_response.dart';
import 'package:simple/features/myip/data/remote/model/ip_model.dart';

abstract class IpLocalDataSource {
  Future<BaseResponse<IpModel?>> getLastIp();
  Future<void> cacheIp(IpModel ipModelCache);

}