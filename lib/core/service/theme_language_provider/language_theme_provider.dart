import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:simple/core/config/locale/locale_configs.dart';
import 'package:simple/core/config/theme/app_theme.dart';
import 'package:simple/core/service/theme_language_provider/language_theme_state.dart';

@injectable
class ThemeAndLanguageProvider extends ChangeNotifier{
  ThemeAndLanguageState _useState = const ThemeAndLanguageState.idle();

  ThemeAndLanguageState get state => _useState;


  set useState(ThemeAndLanguageState value) {
    _useState = value;
    notifyListeners();
  }

  ThemeData? _themeData;
  ThemeType? _themeType;
  Locale? _locale;

  Locale? get locale => _locale;

  LanguageType? _languageType;

  ThemeData? get themeData => _themeData;


  ThemeAndLanguageProvider(){
    _locale = Locale(LanguageType.en.name);
    _languageType = LanguageType.en;
    _themeData = ThemeData.light().theme(_locale?.languageCode);
    _themeType = ThemeType.light;
  }

  void changeTheme({ThemeType? manualSelectThemeType}) {
    if (manualSelectThemeType != null) {
      _themeType = manualSelectThemeType;
    } else {
      _themeType = ThemeType.values
          .where((element) => element.name != _themeType!.name)
          .first;
    }
    switch (_themeType!) {
      case ThemeType.dark:
        _themeData = ThemeData.dark().theme(_locale?.languageCode);
        break;
      case ThemeType.light:
        _themeData = ThemeData.light().theme(_locale?.languageCode);
        break;
    }

    useState = ThemeAndLanguageState.success(themeType: _themeType,languageType: _languageType);
  }

  void changeLanguage({LanguageType? manualSelectLanguageType}) {
    if (manualSelectLanguageType != null) {
      _languageType = manualSelectLanguageType;
    } else {
      _languageType = LanguageType.values
          .where((element) => element.name != _languageType!.name)
          .first;
    }
    switch (_languageType) {
      case LanguageType.en:
        _locale = Locale(LanguageType.en.name);
        break;
      case LanguageType.fa:
        _locale = Locale(LanguageType.fa.name);
        break;
      default:
        _locale = Locale(LanguageType.en.name);
        break;
    }
    switch (_themeType!) {
      case ThemeType.dark:
        _themeData = ThemeData.dark().theme(_locale?.languageCode);
        break;
      case ThemeType.light:
        _themeData = ThemeData.light().theme(_locale?.languageCode);
        break;
    }
    useState = ThemeAndLanguageState.success(themeType: _themeType,languageType: _languageType);
  }
}
