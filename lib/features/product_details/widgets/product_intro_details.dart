import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class ProductIntroDetails extends StatelessWidget {
  const ProductIntroDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppSizes.width_15,
        vertical: AppSizes.height_12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppSizes.height_2),
          AppText(
            text: 'Product Name',
            fontSize: AppFontSize.size_18,
            fontWeight: FontWeight.w600,
          ),
          AppText(
            text: 'Product Description',
            txtColor: AppColor.txtGrey,
            fontSize: AppFontSize.size_12,
            fontWeight: FontWeight.w400,
          ),
          SizedBox(height: AppSizes.height_5),
          AppText(
            text: '₹ 50,00,000,0000',
            fontSize: AppFontSize.size_18,
            fontWeight: FontWeight.w600,
          ),
          SizedBox(height: AppSizes.height_10),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.txtOpacityGrey50,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.width_10,
              vertical: AppSizes.height_15,
            ),
            margin: EdgeInsets.symmetric(vertical: AppSizes.height_10),
            child: Column(
              children: [
                Row(
                  children: const [
                    Expanded(
                      child: ProductSpecificationItem(
                        icons: Icons.person,
                        title: 'title',
                      ),
                    ),
                    Expanded(
                      child: ProductSpecificationItem(
                        icons: Icons.person,
                        title: 'title',
                      ),
                    ),
                    Expanded(
                      child: ProductSpecificationItem(
                        icons: Icons.person,
                        title: 'title',
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: AppSizes.height_10),
                  height: AppSizes.height_1,
                  color: AppColor.black,
                ),
                Row(
                  children: const [
                    Expanded(
                      child: ProductSpecificationItem(
                        icons: Icons.person,
                        title: 'title',
                        subTitle: 'subtitle',
                      ),
                    ),
                    Expanded(
                      child: ProductSpecificationItem(
                        icons: Icons.person,
                        title: 'title',
                        subTitle: 'subtitle',
                      ),
                    ),
                    Expanded(
                      child: ProductSpecificationItem(
                        icons: Icons.person,
                        title: 'title',
                        subTitle: 'subtitle',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: AppSizes.height_10),
          AppText(
            text: EnumLocal.txtDescription.name.tr,
            fontSize: AppFontSize.size_14,
            fontWeight: FontWeight.w600,
          ),
          Container(
            width: AppSizes.fullWidth,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColor.txtOpacityGrey50,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: AppSizes.width_10,
              vertical: AppSizes.height_15,
            ),
            margin: EdgeInsets.symmetric(vertical: AppSizes.height_10),
            child: AppText(
              text: 'Add here HTML data',
              fontSize: AppFontSize.size_12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductSpecificationItem extends StatelessWidget {
  const ProductSpecificationItem({
    super.key,
    required this.icons,
    required this.title,
    this.subTitle = '',
  });

  final IconData icons;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.person, size: AppSizes.height_22),
        SizedBox(width: AppSizes.width_5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: title,
              txtColor: AppColor.txtGrey,
              fontSize: AppFontSize.size_11,
              fontWeight: FontWeight.w400,
            ),
            if (subTitle != '')
              AppText(
                text: subTitle,
                fontSize: AppFontSize.size_12,
                fontWeight: FontWeight.w500,
              ),
          ],
        ),
      ],
    );
  }
}
