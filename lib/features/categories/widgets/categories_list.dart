import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.width_15,
        vertical: AppSizes.height_15,
      ),
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {
            Get.back();
            Get.toNamed(Routes.subCategories);
          },
          child: Container(
            margin: EdgeInsets.only(bottom: AppSizes.height_10),
            child: Row(
              children: [
                Icon(
                  Icons.car_crash,
                  size: AppSizes.height_45,
                ),
                SizedBox(width: AppSizes.width_10),
                Expanded(
                  child: AppText(
                    text: 'Categorie name',
                    fontSize: AppFontSize.size_15,
                  ),
                ),
                SizedBox(width: AppSizes.width_10),
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
