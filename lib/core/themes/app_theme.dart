import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_font_style.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';

/// TimePickerTheme

final TimePickerThemeData _timePickerTheme = TimePickerThemeData(
  backgroundColor: AppColor.primaryBackground,
  hourMinuteShape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  dayPeriodColor: Colors.blueGrey.shade600,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  dayPeriodTextColor: AppColor.white,
  dayPeriodShape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
  ),
  hourMinuteColor: MaterialStateColor.resolveWith(
    (states) => Colors.blueGrey.shade800,
  ),
  hourMinuteTextColor: MaterialStateColor.resolveWith(
    (states) => AppColor.white,
  ),
  dialHandColor: Colors.blueGrey.shade700,
  dialBackgroundColor: Colors.blueGrey.shade800,
  hourMinuteTextStyle: TextStyle(
    fontSize: AppFontSize.size_20,
    fontWeight: FontWeight.bold,
  ),
  dayPeriodTextStyle: TextStyle(
    fontSize: AppFontSize.size_20,
    fontWeight: FontWeight.bold,
  ),
  helpTextStyle: const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: AppColor.white,
  ),
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
    contentPadding: EdgeInsets.zero,
  ),
  dialTextColor: MaterialStateColor.resolveWith(
    (states) => AppColor.white,
  ),
  entryModeIconColor: AppColor.white,
);

class AppTheme {
  /// Light theme
  static ThemeData light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.white,
    backgroundColor: AppColor.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColor.white,
      unselectedItemColor: AppColor.black,
      selectedItemColor: AppColor.black,
      elevation: 0,
    ),
    fontFamily: AppFonts.fontFamilyOpenSans,
    highlightColor: AppColor.transparent,
    splashColor: AppColor.transparent,
    platform: TargetPlatform.android,
    timePickerTheme: _timePickerTheme,
  );

  /// Dark theme
  static ThemeData dark = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColor.white,
    backgroundColor: AppColor.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColor.white,
      unselectedItemColor: AppColor.black,
      selectedItemColor: AppColor.black,
      elevation: 0,
    ),
    fontFamily: AppFonts.fontFamilyOpenSans,
    highlightColor: AppColor.transparent,
    splashColor: AppColor.transparent,
    platform: TargetPlatform.android,
    timePickerTheme: _timePickerTheme,
  );
}
