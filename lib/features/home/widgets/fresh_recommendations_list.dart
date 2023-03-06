import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/core/constants/app_constants.dart';
import 'package:rdl_market_place_app/core/constants/end_point.dart';
import 'package:rdl_market_place_app/core/constants/widget_ids.dart';
import 'package:rdl_market_place_app/features/home/controllers/home_controller.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class FreshRecommendationsList extends StatelessWidget {
  const FreshRecommendationsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppSizes.height_30),
        Container(
          margin: EdgeInsets.symmetric(horizontal: AppSizes.width_15),
          alignment: Alignment.centerLeft,
          child: AppText(
            text: 'Brows Categories',
            fontSize: AppFontSize.size_13,
          ),
        ),
        GetBuilder<HomeController>(
          id: WidgetIds.homeProductListViewId,
            builder: (logic) {
              return GridView.builder(
                itemCount: logic.products.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(
                  horizontal: AppSizes.width_10,
                  vertical: AppSizes.height_12,
                ),
                itemBuilder: (BuildContext context, int index) {
                  var product  = logic.products[index];
                  return InkWell(
                    onTap: () {
                      Get.toNamed(Routes.productDetails,arguments: product);
                    },
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    width: AppSizes.fullWidth,
                                    placeholder: (context, url) => Image.asset(
                                      'assets/images/img_placeholder.webp',
                                      fit: BoxFit.cover,
                                      width: AppSizes.fullWidth,
                                    ),
                                    placeholderFadeInDuration: Duration.zero,
                                    imageUrl: EndPoint.imageBaseURL + (product.medias?.first.url??""),
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
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: AppSizes.width_8,
                                  vertical: AppSizes.height_5,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppText(
                                      text: StringConstant.currencySymbol + (product.price?.toString()??""),
                                      maxLine: 1,
                                      fontSize: AppFontSize.size_14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                    AppText(
                                      text:
                                      product.name??"",
                                      maxLine: 1,
                                      fontSize: AppFontSize.size_13,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    AppText(
                                      text: product.description??"",
                                      maxLine: 1,
                                      fontSize: AppFontSize.size_10,
                                      fontWeight: FontWeight.w400,
                                    ),
                                    SizedBox(height: AppSizes.height_10),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_pin,
                                          size: AppSizes.height_15,
                                        ),
                                        SizedBox(width: AppSizes.width_3),
                                        AppText(
                                          text: 'Varacha, Gujarat',
                                          fontSize: AppFontSize.size_9,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: AppSizes.height_25,
                          width: AppSizes.height_25,
                          margin: EdgeInsets.all(AppSizes.height_12),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColor.white,
                          ),
                          child: Icon(
                            // Icons.favorite_outline,
                            Icons.favorite,
                            // color: AppColor.black,
                            color: AppColor.red,
                            size: AppSizes.height_20,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: AppSizes.width_5,
                  mainAxisSpacing: AppSizes.height_5,
                  mainAxisExtent: AppSizes.height_10 * 25,
                ),
              );
            }),
      ],
    );
  }
}
