import 'package:flutter/foundation.dart';

class AppConstants {
  static String get baseApiUrl {
    if (kDebugMode) {
      return baseDevelopApiUrl;
    } else {
      return baseStageApiUrl;
    }
  }

  static const String baseDevelopApiUrl = "https://api.myip.com/";
  static const String baseStageApiUrl = "https://api.myip.com/";

  static const String fontFamily = 'Poppins';
}