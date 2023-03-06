import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/core/constants/end_point.dart';
import 'package:rdl_market_place_app/features/categories/controllers/categories_controller.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class CategoriesList extends StatelessWidget {
  CategoriesList({super.key});

  final CategoriesController _categoriesController =
  Get.find<CategoriesController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _categoriesController.categories.length,
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.width_15,
        vertical: AppSizes.height_15,
      ),
      itemBuilder: (BuildContext context, int index) {
        var category = _categoriesController.categories[index];
        return InkWell(
          onTap: () {
            ///Get.back();
            ///Get.toNamed(Routes.subCategories);
            if(category.children != null && category.children!.isNotEmpty)
              {
                Get.toNamed(Routes.subCategories,arguments: category);
              }
          },
          child: Container(
            margin: EdgeInsets.only(bottom: AppSizes.height_10),
            child: Row(
              children: [
                CachedNetworkImage(
                  width: AppSizes.width_45,
                  height: AppSizes.width_45,
                  placeholder: (context, url) => Image.asset(
                    'assets/images/img_placeholder.webp',
                    fit: BoxFit.cover,
                  ),
                  placeholderFadeInDuration: Duration.zero,
                  imageUrl: EndPoint.imageBaseURL + (category.imagePath??""),
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
                SizedBox(width: AppSizes.width_10),
                Expanded(
                  child: AppText(
                    text: category.name??"",
                    fontSize: AppFontSize.size_15,
                  ),
                ),
                SizedBox(width: AppSizes.width_10),
                if(category.children !=null && category.children!.isNotEmpty)
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: AppSizes.height_15,
                  color: AppColor.black,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
