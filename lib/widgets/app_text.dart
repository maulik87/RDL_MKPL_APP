import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';

class AppText extends StatelessWidget {
  final String text;
  Color? txtColor;
  double? size;
  FontWeight? fontWeight;
  FontStyle? fontStyle;
  String? fontFamily;
  TextAlign? txtAlign;
  TextOverflow? textOverflow;
  int? maxLine;

  AppText({
    Key? key,
    required this.text,
    this.txtColor,
    this.size,
    this.fontWeight,
    this.txtAlign,
    this.maxLine,
    this.textOverflow,
    this.fontStyle,
    this.fontFamily,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        maxLines: maxLine ?? 2,
        style: TextStyle(
          fontFamily: fontFamily,
          fontStyle: fontStyle,
          color: txtColor ?? AppColor.white,
          fontSize: size ?? 8,
          fontWeight: fontWeight ?? FontWeight.normal,
        ),
        textAlign: txtAlign); //getternsleted(context,key)
  }
}