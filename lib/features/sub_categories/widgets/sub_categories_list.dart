import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class SubCategoriesList extends StatelessWidget {
  const SubCategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      padding: EdgeInsets.symmetric(
        horizontal: AppSizes.width_15,
        vertical: AppSizes.height_15,
      ),
      itemBuilder: (BuildContext context, int index) {
        return _buildSubCategoriesListItem();
      },
    );
  }

  _buildSubCategoriesListItem() {
    return Column(
      children: [
        Theme(
          data:
              Theme.of(Get.context!).copyWith(dividerColor: Colors.transparent),
          child: ExpansionTile(
            title: AppText(
              text: "name of categories",
              fontSize: AppFontSize.size_13,
            ),
            children: List.generate(
              10,
              (index) => ListTile(
                title: AppText(
                  text: 'description',
                  fontSize: AppSizes.height_12,
                ),
              ),
            ),
          ),
        ),
        Container(
          color: AppColor.txtGrey,
          height: AppSizes.height_0_8,
        ),
      ],
    );
  }
}
