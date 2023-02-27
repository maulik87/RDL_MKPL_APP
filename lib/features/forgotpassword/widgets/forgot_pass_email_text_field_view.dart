import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/forgotpassword/controllers/forgot_pass_controller.dart';
import 'package:rdl_market_place_app/features/login/controllers/login_controller.dart';
import 'package:rdl_market_place_app/features/signup/controllers/signup_controller.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/text_form_field.dart';

class ForgotPassEmailTextFieldView extends StatelessWidget {
  ForgotPassEmailTextFieldView({super.key});

  final ForgotPassController _forgotPassController = Get.find<ForgotPassController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: AppSizes.width_15,vertical: AppSizes.height_10),
      child: CommonTextFormField(
        controller: _forgotPassController.emailController,
        hintText: EnumLocal.txtEnterEmail.name.tr,
      ),
    );
  }
}
