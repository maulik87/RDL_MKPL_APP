import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/core/constants/end_point.dart';
import 'package:rdl_market_place_app/core/constants/widget_ids.dart';
import 'package:rdl_market_place_app/features/home/controllers/home_controller.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class BrowseCategoriesList extends StatelessWidget {
  const BrowseCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppSizes.height_15),
        Container(
          margin: EdgeInsets.symmetric(horizontal: AppSizes.width_15),
          child: Row(
            children: [
              Expanded(
                child: AppText(
                  text:  EnumLocal.txtCategories.name.tr,
                  fontSize: AppFontSize.size_13,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.categories,arguments: Get.find<HomeController>().categories);
                },
                child: AppText(
                  text:  EnumLocal.txtSeeAll.name.tr,
                  fontSize: AppFontSize.size_13,
                  txtDecoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: AppSizes.height_10,),
        SizedBox(
          height: AppSizes.height_100,
          child: GetBuilder<HomeController>(
              id: WidgetIds.homeCategoryListViewId,
              builder: (logic) {
            return ListView.builder(
              itemCount: logic.categories.length,
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: AppSizes.width_10),
              itemBuilder: (BuildContext context, int index) {
                var item =  logic.categories[index];
                return Container(
                  margin: EdgeInsets.only(right: AppSizes.width_15),
                  width: AppSizes.width_70,
                  child: Column(
                    children: [
                      Expanded(
                        child: CachedNetworkImage(
                          width: AppSizes.fullWidth,
                          placeholder: (context, url) => Image.asset(
                            'assets/images/img_placeholder.webp',
                            fit: BoxFit.cover,
                          ),
                          placeholderFadeInDuration: Duration.zero,
                          imageUrl: EndPoint.imageBaseURL + (item.imagePath??""),
                          fadeInDuration: Duration.zero,
                          fadeOutDuration: Duration.zero,
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) => Image.asset(
                            'assets/images/img_placeholder.webp',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      AppText(
                        text: item.name ??"N/A",
                        maxLine: 1,
                        fontSize: AppFontSize.size_13,
                      ),
                    ],
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }
}
