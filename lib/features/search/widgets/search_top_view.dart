import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/core/config/utils.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';
import 'package:rdl_market_place_app/widgets/text_form_field.dart';

class SearchTopView extends StatelessWidget {
  const SearchTopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () => Get.back(),
          child: Container(
            padding: EdgeInsets.all(AppSizes.height_12),
            child: Icon(
              Icons.close_rounded,
              size: AppSizes.height_25,
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              PrifixCommonTextFormField(
                controller: TextEditingController(),
                hintText: EnumLocal.txtSearchHere.name.tr,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.search,
                onEditingComplete: () {
                  Utils.dismissKeyboard(context);
                  Get.back();
                  Get.toNamed(Routes.searchResult);
                },
                prefixIcon: const Icon(Icons.search, color: AppColor.black),
              ),
              SizedBox(height: AppSizes.height_15),
              PrifixCommonTextFormField(
                controller: TextEditingController(),
                hintText: EnumLocal.txtSearchYourLocation.name.tr,
                keyboardType: TextInputType.text,
                prefixIcon:
                    const Icon(Icons.location_pin, color: AppColor.black),
              ),
            ],
          ),
        ),
        SizedBox(width: AppSizes.width_15),
      ],
    );
  }
}
