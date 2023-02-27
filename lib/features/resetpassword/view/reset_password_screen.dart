import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/core/constants/widget_ids.dart';
import 'package:rdl_market_place_app/features/login/controllers/login_controller.dart';
import 'package:rdl_market_place_app/features/login/widgets/login_title_view.dart';
import 'package:rdl_market_place_app/features/resetpassword/widgets/reset_confirm_password_text_field_view.dart';
import 'package:rdl_market_place_app/features/resetpassword/widgets/reset_password_text_field_view.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/button.dart';
import 'package:rdl_market_place_app/widgets/progress_dialog.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

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
                    const LoginTitleView(),
                    SizedBox(height: AppSizes.height_50),
                    ResetPasswordTextFieldView(),
                    ResetConfirmPasswordTextFieldView(),
                    SizedBox(height: AppSizes.height_20),
                    Button(
                      buttonName: EnumLocal.txtLogin.name.tr,
                      width: AppSizes.fullWidth / 2,
                      onButtonClick: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          GetBuilder<LoginController>(
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
