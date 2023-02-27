import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/core/config/preference.dart';

abstract class Utils {
  static Widget divider(Color color, {double hMargin = 0, double vMargin = 0}) {
    return Container(
      color: color,
      width: AppSizes.fullWidth,
      height: AppSizes.height_0_8,
      margin: EdgeInsets.symmetric(horizontal: hMargin, vertical: vMargin),
    );
  }

  static bool isLogin() {
    final isLogin = Preference.shared.getBool(Preference.isLogin) ?? false;
    return isLogin;
  }

  static void dismissKeyboard(BuildContext context) {
    FocusScope.of(context).unfocus();
  }

  static Future<bool?> showToast(
    BuildContext context,
    String msg, {
    ToastGravity gravity = ToastGravity.BOTTOM,
  }) {
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_LONG,
      gravity: gravity,
      backgroundColor: AppColor.black.withOpacity(0.50),
      textColor: AppColor.white,
      fontSize: AppFontSize.size_13,
    );
  }
}
