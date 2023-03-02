import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/search_result/widgets/search_result_list.dart';
import 'package:rdl_market_place_app/interfaces/top_bar_click_listener.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';
import 'package:rdl_market_place_app/widgets/text_form_field.dart';
import 'package:rdl_market_place_app/widgets/top_bar.dart';

class SaerchResultScreen extends StatelessWidget
    implements TopBarClickListener {
  const SaerchResultScreen({super.key});

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
          title: EnumLocal.txtSearchResult.name.tr,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: AppSizes.height_20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: AppSizes.width_15),
              child: PrifixCommonTextFormField(
                controller: TextEditingController(),
                hintText: EnumLocal.txtSearchHere.name.tr,
                keyboardType: TextInputType.text,
                readOnly: true,
                onTap: () {
                  Get.toNamed(Routes.search);
                },
                prefixIcon: const Icon(Icons.search, color: AppColor.black),
              ),
            ),
            Container(
              color: AppColor.txtGrey,
              height: AppSizes.height_0_3,
              margin: EdgeInsets.symmetric(vertical: AppSizes.height_20),
            ),
            const SearchResultList(),
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
