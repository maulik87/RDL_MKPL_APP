import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';
import 'package:rdl_market_place_app/interfaces/top_bar_click_listener.dart';
import 'package:rdl_market_place_app/widgets/app_text.dart';

class TopBar extends StatelessWidget {
  final TopBarClickListener? clickListener;
  final String title;
  final bool isShowBack;
  final bool isShowShare;
  final bool isShowFavourite;

  const TopBar({
    Key? key,
    this.clickListener,
    this.title = "",
    this.isShowBack = false,
    this.isShowShare = false,
    this.isShowFavourite = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(
          horizontal: AppSizes.width_10,
          vertical: AppSizes.height_5,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (isShowBack) ...{
              InkWell(
                onTap: () {
                  clickListener?.onTopBarClick(EnumTopBar.topBarBack);
                },
                child: Icon(
                  Icons.arrow_back_rounded,
                  size: AppSizes.height_30,
                  color: AppColor.black,
                ),
              ),
              SizedBox(width: AppSizes.width_20),
            },
            Expanded(
              child: AppText(
                text: title,
                fontSize: AppFontSize.size_15,
                fontWeight: FontWeight.w500,
              ),
            ),
            if (isShowShare) ...{
              SizedBox(width: AppSizes.width_20),
              InkWell(
                onTap: () {
                  clickListener?.onTopBarClick(EnumTopBar.topBarShare);
                },
                child: Icon(
                  Icons.share_rounded,
                  size: AppSizes.height_28,
                  color: AppColor.black,
                ),
              ),
            },
            if (isShowFavourite) ...{
              SizedBox(width: AppSizes.width_20),
              InkWell(
                onTap: () {
                  clickListener?.onTopBarClick(EnumTopBar.topBarFavourite);
                },
                child: Icon(
                  Icons.favorite_rounded,
                  size: AppSizes.height_28,
                  color: AppColor.black,
                ),
              ),
            },
          ],
        ),
      ),
    );
  }
}
