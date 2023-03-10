import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/signup/controllers/signup_controller.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/text_form_field.dart';

class SignupCompanyNameTextFieldView extends StatelessWidget {
  SignupCompanyNameTextFieldView({super.key});

  final SignupController _signupController = Get.find<SignupController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppSizes.width_15, vertical: AppSizes.height_10),
      child: CommonTextFormField(
        controller: _signupController.companyNameController,
        hintText: EnumLocal.txtEnterCompanyName.name.tr,
      ),
    );
  }
}
