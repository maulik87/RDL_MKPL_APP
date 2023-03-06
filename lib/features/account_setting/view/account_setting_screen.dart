import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/account_setting/widget/account_settings_options.dart';
import 'package:rdl_market_place_app/features/my_account/widget/user_profile.dart';
import 'package:rdl_market_place_app/features/search_result/widgets/search_result_list.dart';
import 'package:rdl_market_place_app/interfaces/top_bar_click_listener.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';
import 'package:rdl_market_place_app/widgets/text_form_field.dart';
import 'package:rdl_market_place_app/widgets/top_bar.dart';

class  AccountSettingScreen extends StatelessWidget
    implements TopBarClickListener {
  const AccountSettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: AppColor.white,
        flexibleSpace: TopBar(
          clickListener: this,
          isShowBack: true,
          title: EnumLocal.txtSettings.name.tr,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: AppSizes.height_20),
            AccountSettingsOptions()
          ],
        ),
      ),
    );
  }

  @override
  void onTopBarClick(EnumTopBar name, {bool value = true}) {
    if (name == EnumTopBar.topBarBack) {
      Get.back();
    }
  }
}
