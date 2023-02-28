import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/text_form_field.dart';

class SearchFeild extends StatelessWidget {
  const SearchFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: AppSizes.width_15,
        vertical: AppSizes.height_15,
      ),
      child: Row(
        children: [
          Expanded(
            child: PrifixCommonTextFormField(
              controller: TextEditingController(),
              hintText: EnumLocal.txtSearchHere.name.tr,
              keyboardType: TextInputType.text,
              prefixIcon: const Icon(Icons.search, color: AppColor.black),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: AppSizes.width_15),
            child: const Icon(
              Icons.notifications,
              color: AppColor.black,
            ),
          )
        ],
      ),
    );
  }
}
