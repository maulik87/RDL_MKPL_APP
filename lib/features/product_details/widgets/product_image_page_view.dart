import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/product_details/controllers/product_details_controller.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductImagePageView extends StatelessWidget {
  ProductImagePageView({super.key});

  final ProductDetailsController _productDetailsController =
      Get.find<ProductDetailsController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSizes.height_10 * 30,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView.builder(
            controller: _productDetailsController.pageController,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                'https://images.pexels.com/photos/3729464/pexels-photo-3729464.jpeg?auto=compress&cs=tinysrgb&w=1600',
                fit: BoxFit.fill,
              );
            },
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: AppSizes.height_15),
            child: SmoothPageIndicator(
              controller: _productDetailsController.pageController,
              count: 10,
              effect: const ScrollingDotsEffect(
                activeDotColor: AppColor.solidSleep,
                dotColor: AppColor.white,
              ),
              onDotClicked: (index) {},
            ),
          ),
        ],
      ),
    );
  }
}
