import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/my_account/widget/my_account_options.dart';
import 'package:rdl_market_place_app/features/my_account/widget/user_profile.dart';
import 'package:rdl_market_place_app/features/search_result/widgets/search_result_list.dart';
import 'package:rdl_market_place_app/interfaces/top_bar_click_listener.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';
import 'package:rdl_market_place_app/widgets/text_form_field.dart';
import 'package:rdl_market_place_app/widgets/top_bar.dart';

class  MyAccountScreen extends StatelessWidget
    implements TopBarClickListener {
  const MyAccountScreen({super.key});

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
          title: EnumLocal.txtMyAccount.name.tr,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: AppSizes.height_20),
            MyAccountUserProfile(),
            SizedBox(height: AppSizes.height_5),
            const Divider(height: 2,color: AppColor.black,),
            SizedBox(height: AppSizes.height_5),
            MyAccountOptions()
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
