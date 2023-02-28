import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
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
                  text: 'Brows Categories',
                  fontSize: AppFontSize.size_13,
                ),
              ),
              InkWell(
                onTap: () {
                  Get.toNamed(Routes.categories);
                },
                child: AppText(
                  text: 'See all',
                  fontSize: AppFontSize.size_13,
                  txtDecoration: TextDecoration.underline,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: AppSizes.height_100,
          child: ListView.builder(
            itemCount: 20,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: AppSizes.width_10),
            itemBuilder: (BuildContext context, int index) {
              return Container(
                margin: EdgeInsets.only(right: AppSizes.width_15),
                child: Column(
                  children: [
                    Expanded(
                      child: Icon(
                        Icons.car_rental,
                        size: AppSizes.height_50,
                      ),
                    ),
                    AppText(
                      text: 'Cars',
                      fontSize: AppFontSize.size_13,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
