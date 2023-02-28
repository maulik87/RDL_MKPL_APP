import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_font_style.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';

class CommonTextFormField extends StatelessWidget {
  const CommonTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixText = '',
    this.autofocus = false,
    this.readOnly = false,
    this.onTap,
    this.textColor = AppColor.black,
    this.hintTextColor = AppColor.txtGrey,
    this.validator,
  });

  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool autofocus;
  final bool readOnly;
  final String prefixText;
  final void Function()? onTap;
  final Color textColor;
  final Color hintTextColor;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    var decoration = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColor.black),
    );
    var errorDecoration = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColor.red),
    );

    return TextFormField(
      controller: controller,
      autofocus: autofocus,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textAlign: TextAlign.start,
      readOnly: readOnly,
      onTap: onTap,
      validator: validator,
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: textColor,
        decoration: TextDecoration.none,
        decorationThickness: 0,
        fontFamily: AppFonts.fontFamilyOpenSans,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.white,
        hintText: hintText,
        hintStyle: AppFontStyle.styleW500(hintTextColor, AppFontSize.size_12),
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSizes.width_8,
        ),
        border: decoration,
        focusedBorder: decoration,
        enabledBorder: decoration,
        disabledBorder: decoration,
        errorBorder: errorDecoration,
        focusedErrorBorder: decoration,
      ),
    );
  }
}

class PrifixCommonTextFormField extends StatelessWidget {
  const PrifixCommonTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixText = '',
    this.autofocus = false,
    this.readOnly = false,
    this.onTap,
    this.textColor = AppColor.black,
    this.hintTextColor = AppColor.txtGrey,
    this.validator,
    this.prefixIcon = const SizedBox(),
  });

  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool autofocus;
  final bool readOnly;
  final String prefixText;
  final void Function()? onTap;
  final Color textColor;
  final Color hintTextColor;
  final Widget prefixIcon;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    var decoration = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColor.black),
    );
    var errorDecoration = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: AppColor.red),
    );

    return TextFormField(
      controller: controller,
      autofocus: autofocus,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textAlign: TextAlign.start,
      readOnly: readOnly,
      onTap: onTap,
      validator: validator,
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w400,
        color: textColor,
        decoration: TextDecoration.none,
        decorationThickness: 0,
        fontFamily: AppFonts.fontFamilyOpenSans,
      ),
      decoration: InputDecoration(
        filled: true,
        prefixIcon: prefixIcon,
        fillColor: AppColor.white,
        hintText: hintText,
        hintStyle: AppFontStyle.styleW500(hintTextColor, AppFontSize.size_12),
        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSizes.width_8,
        ),
        border: decoration,
        focusedBorder: decoration,
        enabledBorder: decoration,
        disabledBorder: decoration,
        errorBorder: errorDecoration,
        focusedErrorBorder: decoration,
      ),
    );
  }
}
