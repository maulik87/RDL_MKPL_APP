import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/core/config/preference.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class AccountSettingsOptions extends StatelessWidget {
  const AccountSettingsOptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            unawaited(Preference.shared.clearLogout());
            unawaited(Get.offAllNamed(Routes.login));
          },
          child: Container(
            margin: EdgeInsets.only(bottom: AppSizes.height_15),
            child: Row(
              children: [
                SizedBox(width: AppSizes.width_10),
                Expanded(
                  child: AppText(
                    text: EnumLocal.txtLogout.name.tr,
                    fontSize: AppFontSize.size_15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          height: 1.5,
          color: AppColor.black,
        ),
        InkWell(
          onTap: () {
            Get.toNamed(Routes.accountSetting);
          },
          child: Container(
            margin: EdgeInsets.only(
                top: AppSizes.height_15, bottom: AppSizes.height_15),
            child: Row(
              children: [
                SizedBox(width: AppSizes.width_10),
                Expanded(
                  child: AppText(
                    text: EnumLocal.txtDeleteAccount.name.tr,
                    fontSize: AppFontSize.size_15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          height: 1.5,
          color: AppColor.black,
        ),
      ],
    );
  }
}
