import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

enum ThemeType { dark, light }

extension AppTheme on ThemeData {
  Color get paletteColorBackground => brightness == Brightness.light
      ? Colors.blueGrey.shade300
      : Colors.blueGrey.shade800;

  Color get paletteColorAppBarBackground => brightness == Brightness.light
      ? Colors.teal.shade300
      : Colors.teal.shade800;

  Color get paletteColorButtonBackground => brightness == Brightness.light
      ? Colors.teal.shade800
      : Colors.teal.shade300;

  Color get paletteColorSettingSectionBackground =>
      brightness == Brightness.light ? Colors.white : Colors.blueGrey.shade600;

  ThemeData theme(String? languageCode) {
    return brightness == Brightness.light
        ? copyWith(
            scaffoldBackgroundColor: paletteColorBackground,
            splashColor: Colors.white,
            primaryColor: Colors.greenAccent,
            indicatorColor: Colors.greenAccent,
            progressIndicatorTheme: progressIndicatorTheme.copyWith(
              color: Colors.greenAccent,
            ),
            textTheme: languageCode == 'en'
                ? _getDefaultTextTheme(Colors.teal)
                : _getDefaultPersianTextTheme(Colors.teal),
            appBarTheme: AppBarTheme(
              elevation: 0,
              color: paletteColorAppBarBackground,
              systemOverlayStyle: SystemUiOverlayStyle(
                  statusBarColor: paletteColorAppBarBackground),
            ),
            floatingActionButtonTheme: floatingActionButtonTheme.copyWith(
              backgroundColor: Colors.greenAccent,
            ),
            iconTheme: iconTheme.copyWith(color: Colors.blueGrey.shade900),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                primary: Colors.greenAccent,
                onPrimary: Colors.white,
              ),
            ),
          )
        : copyWith(
            scaffoldBackgroundColor: Colors.white,
            splashColor: Colors.white,
            primaryColor: Colors.orangeAccent,
            indicatorColor: Colors.orangeAccent,
            progressIndicatorTheme: progressIndicatorTheme.copyWith(
              color: Colors.orangeAccent,
            ),
            textTheme: languageCode == 'en'
                ? _getDefaultTextTheme(Colors.lime)
                : _getDefaultPersianTextTheme(Colors.lime),
            appBarTheme: const AppBarTheme(
              elevation: 0,
              color: Colors.orangeAccent,
              systemOverlayStyle:
                  SystemUiOverlayStyle(statusBarColor: Colors.orangeAccent),
            ),
            floatingActionButtonTheme: floatingActionButtonTheme.copyWith(
              backgroundColor: Colors.orangeAccent,
            ),
            iconTheme: iconTheme.copyWith(color: Colors.white),
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                primary: Colors.orangeAccent,
                onPrimary: Colors.white,
              ),
            ),
          );
  }

  TextTheme _getDefaultTextTheme(Color color) {
    return GoogleFonts.balooBhaijaan2TextTheme(textTheme
        .copyWith(
          displayLarge: textTheme.displayLarge
              ?.copyWith(height: 1, fontSize: 57, fontWeight: FontWeight.w400),
          displayMedium: textTheme.displayMedium
              ?.copyWith(height: 1, fontSize: 45, fontWeight: FontWeight.w400),
          displaySmall: textTheme.displaySmall
              ?.copyWith(height: 1, fontSize: 36, fontWeight: FontWeight.w400),
          headlineLarge: textTheme.headlineLarge
              ?.copyWith(height: 1, fontSize: 32, fontWeight: FontWeight.w400),
          headlineMedium: textTheme.headlineMedium
              ?.copyWith(height: 1, fontSize: 28, fontWeight: FontWeight.w400),
          headlineSmall: textTheme.headlineSmall
              ?.copyWith(height: 1, fontSize: 24, fontWeight: FontWeight.w400),
          titleLarge: textTheme.titleLarge
              ?.copyWith(height: 1, fontSize: 22, fontWeight: FontWeight.w500),
          titleMedium: textTheme.titleMedium
              ?.copyWith(height: 1, fontSize: 16, fontWeight: FontWeight.w500),
          titleSmall: textTheme.titleSmall
              ?.copyWith(height: 1, fontSize: 14, fontWeight: FontWeight.w500),
          labelLarge: textTheme.labelLarge
              ?.copyWith(height: 1, fontSize: 14, fontWeight: FontWeight.w500),
          labelMedium: textTheme.labelMedium
              ?.copyWith(height: 1, fontSize: 12, fontWeight: FontWeight.w500),
          labelSmall: textTheme.labelSmall
              ?.copyWith(height: 1, fontSize: 11, fontWeight: FontWeight.w500),
          bodyLarge: textTheme.bodyLarge
              ?.copyWith(height: 1, fontSize: 16, fontWeight: FontWeight.w400),
          bodyMedium: textTheme.bodyMedium
              ?.copyWith(height: 1, fontSize: 14, fontWeight: FontWeight.w400),
          bodySmall: textTheme.bodySmall
              ?.copyWith(height: 1, fontSize: 12, fontWeight: FontWeight.w400),
        )
        .apply(
            fontSizeDelta: 0,
            fontSizeFactor: 0.95,
            displayColor: color,
            bodyColor: color));
  }

  TextTheme _getDefaultPersianTextTheme(Color color) {
    return GoogleFonts.balooBhaijaan2TextTheme(textTheme
        .copyWith(
          displayLarge: textTheme.displayLarge
              ?.copyWith(height: 1, fontSize: 57, fontWeight: FontWeight.w400),
          displayMedium: textTheme.displayMedium
              ?.copyWith(height: 1, fontSize: 45, fontWeight: FontWeight.w400),
          displaySmall: textTheme.displaySmall
              ?.copyWith(height: 1, fontSize: 36, fontWeight: FontWeight.w400),
          headlineLarge: textTheme.headlineLarge
              ?.copyWith(height: 1, fontSize: 32, fontWeight: FontWeight.w400),
          headlineMedium: textTheme.headlineMedium
              ?.copyWith(height: 1, fontSize: 28, fontWeight: FontWeight.w400),
          headlineSmall: textTheme.headlineSmall
              ?.copyWith(height: 1, fontSize: 24, fontWeight: FontWeight.w400),
          titleLarge: textTheme.titleLarge
              ?.copyWith(height: 1, fontSize: 22, fontWeight: FontWeight.w500),
          titleMedium: textTheme.titleMedium
              ?.copyWith(height: 1, fontSize: 16, fontWeight: FontWeight.w500),
          titleSmall: textTheme.titleSmall
              ?.copyWith(height: 1, fontSize: 14, fontWeight: FontWeight.w500),
          labelLarge: textTheme.labelLarge
              ?.copyWith(height: 1, fontSize: 14, fontWeight: FontWeight.w500),
          labelMedium: textTheme.labelMedium
              ?.copyWith(height: 1, fontSize: 12, fontWeight: FontWeight.w500),
          labelSmall: textTheme.labelSmall
              ?.copyWith(height: 1, fontSize: 11, fontWeight: FontWeight.w500),
          bodyLarge: textTheme.bodyLarge
              ?.copyWith(height: 1, fontSize: 16, fontWeight: FontWeight.w400),
          bodyMedium: textTheme.bodyMedium
              ?.copyWith(height: 1, fontSize: 14, fontWeight: FontWeight.w400),
          bodySmall: textTheme.bodySmall
              ?.copyWith(height: 1, fontSize: 12, fontWeight: FontWeight.w400),
        )
        .apply(
            fontSizeDelta: 0,
            fontSizeFactor: 0.95,
            displayColor: color,
            bodyColor: color));
  }
}
