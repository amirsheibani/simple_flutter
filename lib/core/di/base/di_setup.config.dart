// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../features/home/presentation/manager/test_provider/increment_provider.dart'
    as _i5;
import '../../../features/main/presentation/manager/bottom_navigation_bar_provider.dart'
    as _i3;
import '../../../features/myip/data/local/data_sources/local_data_sources.dart'
    as _i6;
import '../../../features/myip/data/local/data_sources/local_data_sources_impl.dart'
    as _i7;
import '../../../features/myip/data/remote/data_sources/remot_data_sources.dart'
    as _i11;
import '../../../features/myip/data/remote/data_sources/remot_data_sources_impl.dart'
    as _i12;
import '../../../features/myip/data/remote/service/api_service.dart' as _i10;
import '../../../features/myip/data/repository/api_repository_impl.dart'
    as _i14;
import '../../../features/myip/domain/repository/my_ip_repository.dart' as _i13;
import '../../../features/myip/domain/usecase/my_ip_usecase.dart' as _i15;
import '../../../features/myip/presentation/manager/bloc/my_ip_bloc.dart'
    as _i16;
import '../../../features/myip/presentation/manager/provider/my_ip_provider.dart'
    as _i17;
import '../../service/theme_language_provider/language_theme_provider.dart'
    as _i9;
import '../network/di/network_module.dart' as _i18;
import '../network/interceptors/pretty_dio_logger.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  gh.factory<_i3.BottomNavigationBarProvider>(
      () => _i3.BottomNavigationBarProvider());
  gh.singleton<_i4.Dio>(networkModule.dio);
  gh.factory<_i5.IncrementProvider>(() => _i5.IncrementProvider());
  gh.lazySingleton<_i6.IpLocalDataSource>(() => _i7.IpLocalDataSourceImpl());
  gh.singleton<_i8.PrettyDioLogger>(networkModule.prettyDioLogger);
  gh.factory<_i9.ThemeAndLanguageProvider>(
      () => _i9.ThemeAndLanguageProvider());
  gh.lazySingleton<_i10.ApiService>(() => _i10.ApiService(get<_i4.Dio>()));
  gh.lazySingleton<_i11.IpRemoteDataSource>(
      () => _i12.IpRemoteDataSourceImpl(get<_i10.ApiService>()));
  gh.lazySingleton<_i13.ApiRepository>(() => _i14.ApiRepositoryImpl(
      get<_i11.IpRemoteDataSource>(), get<_i6.IpLocalDataSource>()));
  gh.singleton<_i15.MyIPUseCase>(_i15.MyIPUseCase(get<_i13.ApiRepository>()));
  gh.factory<_i16.MyIpBloc>(() => _i16.MyIpBloc(get<_i15.MyIPUseCase>()));
  gh.factory<_i17.MyIpPageProvider>(
      () => _i17.MyIpPageProvider(get<_i15.MyIPUseCase>()));
  return get;
}

class _$NetworkModule extends _i18.NetworkModule {}
