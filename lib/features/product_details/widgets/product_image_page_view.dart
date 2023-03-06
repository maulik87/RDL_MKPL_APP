import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/core/constants/end_point.dart';
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
            itemCount: _productDetailsController.product.medias?.length,
            itemBuilder: (BuildContext context, int index) {
              return CachedNetworkImage(
                width: AppSizes.fullWidth,
                placeholder: (context, url) => Image.asset(
                  'assets/images/img_placeholder.webp',
                  fit: BoxFit.cover,
                  width: AppSizes.fullWidth,
                ),
                placeholderFadeInDuration: Duration.zero,
                imageUrl: EndPoint.imageBaseURL + (_productDetailsController.product.medias![index].url??""),
                fadeInDuration: Duration.zero,
                fadeOutDuration: Duration.zero,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    // borderRadius: BorderRadius.circular(100.0),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                errorWidget: (context, url, error) => Image.asset(
                  'assets/images/img_placeholder.webp',
                  fit: BoxFit.cover,
                  width: AppSizes.fullWidth,
                ),
              );

                Image.network(
                'https://images.pexels.com/photos/3729464/pexels-photo-3729464.jpeg?auto=compress&cs=tinysrgb&w=1600',
                fit: BoxFit.fill,
              );
            },
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: AppSizes.height_15),
            child: SmoothPageIndicator(
              controller: _productDetailsController.pageController,
              count: _productDetailsController.product.medias?.length??0,
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
