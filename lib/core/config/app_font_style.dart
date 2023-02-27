import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';

abstract class AppFonts {
  static const fontFamilyOpenSans = 'OpenSans';
}

abstract class AppFontStyle {
  /// Poppins

  /// Login Flow Title Text Style
  static TextStyle get titleStyle => TextStyle(
        color: AppColor.txtWhite,
        fontSize: AppFontSize.size_18,
        fontFamily: AppFonts.fontFamilyOpenSans,
        fontWeight: FontWeight.w700, // Bold
      );

  static TextStyle styleW400(
    Color? color,
    double? fontSize, {
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: AppFonts.fontFamilyOpenSans,
      decoration: decoration,
      fontWeight: FontWeight.w400, // Medium
    );
  }

  static TextStyle styleW500(
    Color? color,
    double? fontSize, {
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: AppFonts.fontFamilyOpenSans,
      decoration: decoration,
      fontWeight: FontWeight.w500, // Medium
    );
  }

  static TextStyle styleW600(
    Color? color,
    double? fontSize, {
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: AppFonts.fontFamilyOpenSans,
      decoration: decoration,
      fontWeight: FontWeight.w600, // Regular
    );
  }

  static TextStyle styleW700(
    Color? color,
    double? fontSize, {
    TextDecoration decoration = TextDecoration.none,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontFamily: AppFonts.fontFamilyOpenSans,
      decoration: decoration,
      fontWeight: FontWeight.w700, // Bold
    );
  }

}
