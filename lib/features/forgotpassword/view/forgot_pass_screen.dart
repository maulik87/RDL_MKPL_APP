import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/core/constants/widget_ids.dart';
import 'package:rdl_market_place_app/features/forgotpassword/controllers/forgot_pass_controller.dart';
import 'package:rdl_market_place_app/features/forgotpassword/widgets/forgot_pass_email_text_field_view.dart';
import 'package:rdl_market_place_app/features/forgotpassword/widgets/forgot_pass_title_view.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/button.dart';
import 'package:rdl_market_place_app/widgets/progress_dialog.dart';

class ForgotPassScreen extends StatelessWidget {
  const ForgotPassScreen({super.key});

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
                    const ForgotPassTitleView(),
                    SizedBox(height: AppSizes.height_50),
                    ForgotPassEmailTextFieldView(),
                    SizedBox(height: AppSizes.height_30),
                    Button(
                      buttonName: EnumLocal.txtForgotPassword.name.tr,
                      width: AppSizes.fullWidth / 2,
                      onButtonClick: () {
                        Get.find<ForgotPassController>().forgotPass();
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          GetBuilder<ForgotPassController>(
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
