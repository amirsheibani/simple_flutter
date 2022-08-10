import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple/core/config/locale/locale_configs.dart';
import 'package:simple/core/config/routes/app_routes.dart';
import 'package:simple/core/config/theme/app_theme.dart';
import 'package:simple/core/di/di_setup.dart';
import 'package:simple/core/service/theme_language_provider/language_theme_provider.dart';
import 'package:simple/generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  Provider.debugCheckInvalidValueType = null;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) {
          final provider = getIt<ThemeAndLanguageProvider>();
          provider.changeLanguage(manualSelectLanguageType: LanguageType.en);
          provider.changeTheme(manualSelectThemeType: ThemeType.light);
          return provider;
        }),
      ],
      child: Consumer<ThemeAndLanguageProvider>(
        builder: (context, themeLanguageProvider, child){
          return MaterialApp(
            locale: themeLanguageProvider.locale!,
            supportedLocales: S.delegate.supportedLocales,
            localizationsDelegates: LocaleConfigs.localizationsDelegates,
            title: kDebugMode ? "SimpleAppTestDev" : "SimpleAppTest",
            debugShowCheckedModeBanner: false,
            theme: themeLanguageProvider.themeData!,
            onGenerateRoute: AppRoutes.onGenerateRoutes,
          );
        },
      ),
    );
  }
}
