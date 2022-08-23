import 'package:injectable/injectable.dart';
import 'package:simple/core/base/data/model/base_response.dart';
import 'package:simple/features/myip/data/local/data_sources/local_data_sources.dart';
import 'package:simple/features/myip/data/remote/model/ip_entity.model.g.dart';

@LazySingleton(as: IpLocalDataSource)
class IpLocalDataSourceImpl extends IpLocalDataSource {


  @override
  Future<void> cacheIp(IpModel ipModelCache) {
    // TODO: implement cacheIp
    throw UnimplementedError();
  }

  @override
  Future<BaseResponse<IpModel?>> getLastIp() {
    // TODO: implement getLastIp
    throw UnimplementedError();
  }


}