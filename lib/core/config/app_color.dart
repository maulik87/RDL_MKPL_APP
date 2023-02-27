import 'package:flutter/material.dart';

abstract class AppColor {
  static const transparent = Color(0x00FFFFFF);
  static const black = Color(0xff000000);
  static const white = Color(0xFFFFFFFF);
  static const red = Color(0xFFeb3224);

  static const primaryBackground = Color(0xFFFFFFFF);
  static const secondaryBackground = Color(0xFF212121);

  static const txtWhite = Color(0xFFFDFCE9);
  static const txtGrey = Color(0xFF909090);
  static const txtSecondaryGrey = Color(0xFFC5C5C5);
  static const txtOpacityGrey50 = Color(0x50909090);
  static const txtBlue = Color(0xFF2B6ABC);
  static const txtGradiantFirst = Color(0xFFBBD2C5);
  static const txtGradiantSecond = Color(0xFF292E49);
  static const txtGreen = Color(0xFF27AE24);
  static const txtLightGreen = Color(0xFF6AEB68);
  static const txtDarkGreen = Color(0xFF026506);
  static const txtAssetGreen = Color(0xFFBBD2C5);

  static const primaryRound = Color(0xFFD9D9D9);
  static const primaryBoarder = Color(0x20D9D9D9);
  static const primaryBoarderOpacity10 = Color(0x10D9D9D9);

  static const buttonGrey = Color(0xFF536976);
  static const buttonGreenOpacity50 = Color(0x5027AE24);
  static const bgContainer = Color(0xFF292929);
  static const bgContainerSecond = Color(0xFF202020);
  static const brownDivider = Color(0xFF544C4C);
  static const imageGreen = Color(0xFF1aad37);

  static const solidCalorieIntake = Color(0xFF4CCB17);
  static const solidActivity = Color(0xFFE65C00);
  static const solidHeartRate = Color(0xFFD10F2C);
  static const solidSleep = Color(0xFF1F2EBE);
  static const solidSpO2 = Color(0xFFB8E2F2);
  static const solidTemperature = Color(0xFFF5D10D);
  static const solidStress = Color(0xFF743799);
  static const solidBodyGoalsTargets = Color(0xFF566C79);

  static const chartProgress1 = Color(0xFF0B6623);
  static const chartProgress2 = Color(0xFF4CCB17);
  static const chartProgress3 = Color(0xFFFACA72);

  static const bgGradiantContainer = LinearGradient(
    colors: [
      Color(0x65FFFFFF),
      Color(0x80909090),
      Color(0x804A4A4A),
      Color(0x80151515),
    ],
    // begin: Alignment.topCenter,
    // end: Alignment.bottomCenter,
    stops: [1, 0, 0, 0],
  );
}
