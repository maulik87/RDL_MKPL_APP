import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/resetpassword/controllers/reset_password_controller.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/text_form_field.dart';

class ResetPasswordTextFieldView extends StatelessWidget {
  ResetPasswordTextFieldView({super.key});

  final ResetPasswordController _resetPasswordController =
      Get.find<ResetPasswordController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppSizes.width_15, vertical: AppSizes.height_10),
      child: CommonTextFormField(
        controller: _resetPasswordController.passController,
        hintText: EnumLocal.txtEnterPassword.name.tr,
      ),
    );
  }
}
