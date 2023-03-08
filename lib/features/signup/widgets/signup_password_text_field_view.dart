import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/signup/controllers/signup_controller.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/common_password_text_field.dart';

class SignupPasswordTextFieldView extends StatelessWidget {
  SignupPasswordTextFieldView({super.key});

  final SignupController _signupController = Get.find<SignupController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppSizes.width_15, vertical: AppSizes.height_10),
      child: CommonPasswordTextField(
        controller: _signupController.passController,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        hintText: EnumLocal.txtEnterPassword.name.tr,
        prefixText: '',
      ),
    );
  }
}
