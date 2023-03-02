import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/search/widgets/popular_categories_list.dart';
import 'package:rdl_market_place_app/features/search/widgets/recent_search_list.dart';
import 'package:rdl_market_place_app/features/search/widgets/search_list.dart';
import 'package:rdl_market_place_app/features/search/widgets/search_top_view.dart';

class SaerchScreen extends StatelessWidget {
  const SaerchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: AppSizes.height_15),
            const SearchTopView(),
            Container(
              color: AppColor.txtGrey,
              height: AppSizes.height_0_3,
              margin: EdgeInsets.symmetric(vertical: AppSizes.height_20),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    SearchList(),
                    RecentSearchList(),
                    PopularCategoriesList(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
