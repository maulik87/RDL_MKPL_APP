import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_font_style.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color txtColor;
  final double fontSize;
  final FontWeight fontWeight;
  final FontStyle fontStyle;
  final String fontFamily;
  final TextAlign txtAlign;
  final TextOverflow textOverflow;
  final int maxLine;
  final TextDecoration txtDecoration;

  const AppText({
    Key? key,
    required this.text,
    required this.fontSize,
    this.txtColor = AppColor.black,
    this.fontWeight = FontWeight.w400,
    this.txtAlign = TextAlign.start,
    this.maxLine = 2,
    this.textOverflow = TextOverflow.ellipsis,
    this.fontStyle = FontStyle.normal,
    this.fontFamily = AppFonts.fontFamilyOpenSans,
    this.txtDecoration = TextDecoration.none,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      textAlign: txtAlign,
      overflow: textOverflow,
      style: TextStyle(
        fontFamily: fontFamily,
        fontStyle: fontStyle,
        color: txtColor,
        fontSize: fontSize,
        fontWeight: fontWeight,
        decoration: txtDecoration,
      ),
    );
  }
}
