import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
import 'package:rdl_market_place_app/features/categories/controllers/categories_controller.dart';
import 'package:rdl_market_place_app/features/categories/widgets/categories_list.dart';
import 'package:rdl_market_place_app/interfaces/top_bar_click_listener.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/widgets/progress_dialog.dart';
import 'package:rdl_market_place_app/widgets/top_bar.dart';

class CategoriesScreen extends StatelessWidget implements TopBarClickListener {
  CategoriesScreen({super.key});

  final CategoriesController _categoriesController =
      Get.find<CategoriesController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: AppColor.white,
          appBar: AppBar(
            leading: const SizedBox(),
            backgroundColor: AppColor.white,
            flexibleSpace: TopBar(
              clickListener: this,
              title: EnumLocal.txtCategories.name.tr,
              isShowBack: true,
            ),
          ),
          body: const CategoriesList(),
        ),
        Obx(
          () => ProgressDialog(
            isShowProgress: _categoriesController.isShowProgress.value,
          ),
        ),
      ],
    );
  }

  @override
  void onTopBarClick(EnumTopBar name, {bool value = true}) {
    if (name == EnumTopBar.topBarBack) {
      Get.back();
    }
  }
}
