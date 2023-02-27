import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/core/constants/widget_ids.dart';
import 'package:rdl_market_place_app/features/signup/controllers/signup_controller.dart';
import 'package:rdl_market_place_app/features/signup/widgets/signup_company_name_text_field_view.dart';
import 'package:rdl_market_place_app/features/signup/widgets/signup_email_text_field_view.dart';
import 'package:rdl_market_place_app/features/signup/widgets/signup_full_name_text_field_view.dart';
import 'package:rdl_market_place_app/features/signup/widgets/signup_password_text_field_view.dart';
import 'package:rdl_market_place_app/features/signup/widgets/signup_title_view.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/button.dart';
import 'package:rdl_market_place_app/widgets/progress_dialog.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackground,
      body: Stack(
        children: [
          SafeArea(
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SignupTitleView(),
                    SizedBox(height: AppSizes.height_50),
                    SignupFullNameTextFieldView(),
                    SignupCompanyNameTextFieldView(),
                    SignupEmailTextFieldView(),
                    SignupPasswordTextFieldView(),
                    SizedBox(height: AppSizes.height_50),
                    Button(
                      buttonName: EnumLocal.txtCreateAccount.name.tr,
                      width: AppSizes.fullWidth / 2,
                      onButtonClick: () {
                        Get.find<SignupController>().signup();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          GetBuilder<SignupController>(
            id: WidgetIds.progressViewId,
            builder: (logic) {
              return ProgressDialog(isShowProgress: logic.isShowProgress);
            },
          ),
        ],
      ),
    );
  }
}
