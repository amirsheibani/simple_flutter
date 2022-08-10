// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../features/home/presentation/manager/test_provider/increment_provider.dart'
    as _i4;
import '../../features/main/presentation/manager/bottom_navigation_bar_provider.dart'
    as _i3;
import '../service/theme_language_provider/language_theme_provider.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.BottomNavigationBarProvider>(
      () => _i3.BottomNavigationBarProvider());
  gh.factory<_i4.IncrementProvider>(() => _i4.IncrementProvider());
  gh.factory<_i5.ThemeAndLanguageProvider>(
      () => _i5.ThemeAndLanguageProvider());
  return get;
}
