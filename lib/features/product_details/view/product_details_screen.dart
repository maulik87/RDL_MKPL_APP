import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
import 'package:rdl_market_place_app/features/product_details/widgets/product_image_page_view.dart';
import 'package:rdl_market_place_app/features/product_details/widgets/product_intro_details.dart';
import 'package:rdl_market_place_app/interfaces/top_bar_click_listener.dart';
import 'package:rdl_market_place_app/widgets/top_bar.dart';

class ProductDetailsCreen extends StatelessWidget
    implements TopBarClickListener {
  const ProductDetailsCreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: AppColor.white,
        flexibleSpace: TopBar(
          clickListener: this,
          title: "Product Name",
          isShowBack: true,
          isShowShare: true,
          isShowFavourite: true,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProductImagePageView(),
            const ProductIntroDetails(),
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
