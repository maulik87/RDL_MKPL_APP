import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/my_account/controllers/my_account_controller.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class MyAccountOptions extends StatelessWidget {
  MyAccountOptions({Key? key}) : super(key: key);

  MyAccountController myAccountController = Get.find<MyAccountController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: AppSizes.height_20,),
        InkWell(
          onTap: () {
            ///Get.back();
            ///Get.toNamed(Routes.subCategories);
          },
          child: Container(
            margin: EdgeInsets.only(bottom: AppSizes.height_20),
            child: Row(
              children: [
                SizedBox(width: AppSizes.width_10),
                Icon(
                  Icons.shopping_cart,
                  size: AppSizes.height_20,
                  color: AppColor.black,
                ),
                SizedBox(width: AppSizes.width_10),
                Expanded(
                  child: AppText(
                    text: EnumLocal.txtMyOrders.name.tr,
                    fontSize: AppFontSize.size_15,
                  ),
                ),
                SizedBox(width: AppSizes.width_10),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: AppSizes.height_20,
                  color: AppColor.black,
                ),
                SizedBox(width: AppSizes.width_10),
              ],
            ),
          ),
        ),
        const Divider(height: 1.5,color: AppColor.black,),
        InkWell(
          onTap: () {
            Get.toNamed(Routes.accountSetting);
          },
          child: Container(
            margin: EdgeInsets.only(bottom: AppSizes.height_20),
            child: Row(
              children: [
                SizedBox(width: AppSizes.width_10),
                Icon(
                  Icons.settings,
                  size: AppSizes.height_20,
                  color: AppColor.black,
                ),
                SizedBox(width: AppSizes.width_10),
                Expanded(
                  child: AppText(
                    text: EnumLocal.txtSettings.name.tr,
                    fontSize: AppFontSize.size_15,
                  ),
                ),
                SizedBox(width: AppSizes.width_10),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: AppSizes.height_20,
                  color: AppColor.black,
                ),
                SizedBox(width: AppSizes.width_10),
              ],
            ),
          ),
        ),
        const Divider(height: 1.5,color: AppColor.black,),
      ],
    );
  }
}
