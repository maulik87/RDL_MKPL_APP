import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_font_style.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/login/controllers/login_controller.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';

class CreateAccountTextView extends StatelessWidget {
  CreateAccountTextView({super.key});

  final LoginController _loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          _loginController.onCreateAccountClick();
        },
        child: Text(
          EnumLocal.txtCreateAccountMsg.name.tr,
              style: AppFontStyle.styleW400(AppColor.black, AppFontSize.size_12),
        ));
  }
}
