import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/login/controllers/login_controller.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/common_password_text_field.dart';

class PasswordTextFieldView extends StatelessWidget {
  PasswordTextFieldView({super.key});

  final LoginController _loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppSizes.width_15, vertical: AppSizes.height_10),
      child: CommonPasswordTextField(
        controller: _loginController.passController,
        hintText: EnumLocal.txtEnterPassword.name.tr,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
      ),
    );
  }
}
