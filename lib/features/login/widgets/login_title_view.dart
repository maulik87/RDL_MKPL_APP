import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_font_style.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';

class LoginTitleView extends StatelessWidget {
  const LoginTitleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      EnumLocal.txtLoginNow.name.tr,
      style: AppFontStyle.styleW700(AppColor.black, AppFontSize.size_35),
    );
  }
}
