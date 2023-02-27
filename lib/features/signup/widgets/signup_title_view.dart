import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
import 'package:rdl_market_place_app/core/config/app_font_style.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';

class SignupTitleView extends StatelessWidget {
  const SignupTitleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSizes.width_15),
      child: Text(
        EnumLocal.txtCreateAccount.name.tr,
        textAlign: TextAlign.center,
        style: AppFontStyle.styleW700(AppColor.black, AppFontSize.size_35),
      ),
    );
  }
}
