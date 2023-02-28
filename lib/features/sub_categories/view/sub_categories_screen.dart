import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
import 'package:rdl_market_place_app/features/sub_categories/controllers/sub_categories_controller.dart';
import 'package:rdl_market_place_app/features/sub_categories/widgets/sub_categories_list.dart';
import 'package:rdl_market_place_app/interfaces/top_bar_click_listener.dart';
import 'package:rdl_market_place_app/widgets/progress_dialog.dart';
import 'package:rdl_market_place_app/widgets/top_bar.dart';

class SubCategoriesScreen extends StatelessWidget
    implements TopBarClickListener {
  SubCategoriesScreen({super.key});

  final SubCategoriesController _subCategoriesController =
      Get.find<SubCategoriesController>();

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
              title: "Categorie Name",
              isShowBack: true,
            ),
          ),
          body: const SubCategoriesList(),
        ),
        Obx(
          () => ProgressDialog(
            isShowProgress: _subCategoriesController.isShowProgress.value,
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
