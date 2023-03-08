import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/login/controllers/login_controller.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/text_form_field.dart';

class EmailTextFieldView extends StatelessWidget {
  EmailTextFieldView({super.key});

  final LoginController _loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppSizes.width_15, vertical: AppSizes.height_10),
      child: CommonTextFormField(
        controller: _loginController.emailController,
        hintText: EnumLocal.txtEnterEmail.name.tr,
      ),
    );
  }
}
