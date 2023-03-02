import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/home/controllers/home_controller.dart';
import 'package:rdl_market_place_app/features/home/widgets/browse_categories_list.dart';
import 'package:rdl_market_place_app/features/home/widgets/fresh_recommendations_list.dart';
import 'package:rdl_market_place_app/features/home/widgets/search_field.dart';
import 'package:rdl_market_place_app/widgets/progress_dialog.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController _homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            const SearchFeild(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    BrowseCategoriesList(),
                    FreshRecommendationsList(),
                  ],
                ),
              ),
            ),
          ],
        ),
        Obx(
          () => ProgressDialog(
            isShowProgress: _homeController.isShowProgress.value,
          ),
        ),
      ],
    );
  }
}
