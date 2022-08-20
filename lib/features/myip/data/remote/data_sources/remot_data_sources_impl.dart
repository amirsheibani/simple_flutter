import 'package:injectable/injectable.dart';
import 'package:simple/core/base/data/model/base_response.dart';
import 'package:simple/features/myip/data/remote/data_sources/remot_data_sources.dart';
import 'package:simple/features/myip/data/remote/model/ip_model.dart';
import 'package:simple/features/myip/data/remote/service/api_service.dart';


@LazySingleton(as: IpRemoteDataSource)
class IpRemoteDataSourceImpl extends IpRemoteDataSource {
  final ApiService _apiService;


  IpRemoteDataSourceImpl(this._apiService);

  @override
  Future<BaseResponse<IpModel?>> requestGetIpFromServer() async {
    final resultApi = await _apiService.requestGetIp();
    return BaseResponse<IpModel?>.fromJson(resultApi, (value) => IpModel.fromJson(value));
  }

}