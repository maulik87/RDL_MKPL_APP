import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_font_style.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';

class Button extends StatelessWidget {
  final String buttonName;
  final Color buttonTextColor;
  final double width;
  final Function() onButtonClick;

  const Button({
    super.key,
    required this.buttonName,
    required this.width,
    required this.onButtonClick,
    this.buttonTextColor = AppColor.white,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onButtonClick,
      child: Container(
        width: width,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(
          vertical: AppSizes.height_15,
          horizontal: AppSizes.width_15,
        ),
        decoration: BoxDecoration(
          color: AppColor.buttonGrey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          buttonName,
          style: AppFontStyle.styleW600(
            buttonTextColor,
            AppFontSize.size_13,
          ),
        ),
      ),
    );
  }
}
