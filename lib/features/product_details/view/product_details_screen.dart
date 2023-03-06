import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
import 'package:rdl_market_place_app/features/product_details/controllers/product_details_controller.dart';
import 'package:rdl_market_place_app/features/product_details/widgets/product_image_page_view.dart';
import 'package:rdl_market_place_app/features/product_details/widgets/product_intro_details.dart';
import 'package:rdl_market_place_app/interfaces/top_bar_click_listener.dart';
import 'package:rdl_market_place_app/widgets/top_bar.dart';

class ProductDetailScreen extends StatelessWidget
    implements TopBarClickListener {
  ProductDetailScreen({super.key});

  final ProductDetailsController _productDetailsController =
  Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        leading: const SizedBox(),
        backgroundColor: AppColor.white,
        flexibleSpace: TopBar(
          clickListener: this,
          title: _productDetailsController.product.name??"",
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
            ProductIntroDetails(),
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
