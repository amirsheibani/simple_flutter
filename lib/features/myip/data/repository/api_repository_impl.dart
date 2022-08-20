import 'package:injectable/injectable.dart';
import 'package:simple/core/di/network/network_state/error/api_result_convert.dart';
import 'package:simple/core/di/network/network_state/result/api_result.dart';
import 'package:simple/features/myip/data/local/data_sources/local_data_sources.dart';
import 'package:simple/features/myip/data/remote/data_sources/remot_data_sources.dart';
import 'package:simple/features/myip/domain/entity/ip_entity.dart';

import 'package:simple/features/myip/domain/repository/my_ip_repository.dart';

@LazySingleton(as: ApiRepository)
class ApiRepositoryImpl extends ApiRepository{
  final IpRemoteDataSource _remoteDataSource;
  final IpLocalDataSource _localDataSource;

  ApiRepositoryImpl(this._remoteDataSource, this._localDataSource);

  @override
  Future<ApiResult<IpEntity?>> myIpFetchFromServer() async {
    try{
      final result = await _remoteDataSource.requestGetIpFromServer();
      return  ApiResult.success(
          data: result.data);
    } catch (e) {
      return e.toApiResult();
    }
  }

}