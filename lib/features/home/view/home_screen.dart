import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/core/constants/widget_ids.dart';
import 'package:rdl_market_place_app/features/home/controllers/home_controller.dart';
import 'package:rdl_market_place_app/features/login/controllers/login_controller.dart';
import 'package:rdl_market_place_app/features/login/widgets/create_account_text_view.dart';
import 'package:rdl_market_place_app/features/login/widgets/email_text_field_view.dart';
import 'package:rdl_market_place_app/features/login/widgets/forgot_password_text_view.dart';
import 'package:rdl_market_place_app/features/login/widgets/login_title_view.dart';
import 'package:rdl_market_place_app/features/login/widgets/password_text_field_view.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/button.dart';
import 'package:rdl_market_place_app/widgets/progress_dialog.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                    Container()
                  ],
                ),
              ),
            ),
          ),
          GetBuilder<HomeController>(
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
