import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/features/bottom_bar/controllers/bottom_bar_controller.dart';
import 'package:rdl_market_place_app/features/home/view/home_screen.dart';
import 'package:rdl_market_place_app/features/my_account/view/my_account_screen.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class BottomBarScreen extends StatelessWidget {
  BottomBarScreen({super.key});

  final BottomBarController _bottomBarController =
      Get.find<BottomBarController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryBackground,
      body: SafeArea(
        child: PageView(
          controller: _bottomBarController.pageView,
          children: [
            HomeScreen(),
            const ColoredBox(color: Colors.yellow),
            const ColoredBox(color: Colors.red),
            const MyAccountScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            const _BottomBarItem(
              icons: Icons.home_rounded,
              title: 'Home',
            ),
            SizedBox(width: AppSizes.width_10),
            const _BottomBarItem(
              icons: Icons.dashboard_rounded,
              title: 'Dashboard',
            ),
            const Spacer(),
            const _BottomBarItem(
              icons: Icons.favorite_rounded,
              title: 'Favourite',
            ),
            SizedBox(width: AppSizes.width_10),
            const _BottomBarItem(
              icons: Icons.person_rounded,
              title: 'Profile',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
          color: AppColor.white,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _BottomBarItem extends StatelessWidget {
  const _BottomBarItem({
    required this.icons,
    required this.title,
  });

  final IconData icons;
  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.find<BottomBarController>().onBottomBarItemClick(title);
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: AppSizes.width_15,
          vertical: AppSizes.height_10,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icons),
            AppText(
              text: title,
              fontSize: AppFontSize.size_12,
              fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
