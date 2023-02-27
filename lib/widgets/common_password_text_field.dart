import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';
import 'package:rdl_market_place_app/core/config/app_font_style.dart';
import 'package:rdl_market_place_app/core/config/app_sizes.dart';

class CommonPasswordTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final bool autofocus;
  final bool readOnly;
  final String prefixText;
  final void Function()? onTap;
  final Color textColor;
  final String? Function(String?)? validator;

  const CommonPasswordTextField({
    super.key,
    this.hintText = '',
    this.keyboardType = TextInputType.text,
    required this.controller,
    this.obscureText = false,
    this.prefixText = '',
    this.autofocus = false,
    this.readOnly = false,
    this.onTap,
    this.textColor = AppColor.black,
    this.validator,
  });

  @override
  State<CommonPasswordTextField> createState() =>
      _CommonPasswordTextFieldState();
}

class _CommonPasswordTextFieldState extends State<CommonPasswordTextField> {
  bool passwordVisible = false;

  var decoration = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: AppColor.black),
  );
  var errorDecoration = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: const BorderSide(color: AppColor.red),
  );

  @override
  void initState() {
    passwordVisible = widget.obscureText;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      autofocus: widget.autofocus,
      obscureText: passwordVisible,
      keyboardType: widget.keyboardType,
      textAlign: TextAlign.start,
      readOnly: widget.readOnly,
      onTap: widget.onTap,
      validator: widget.validator,
      style: AppFontStyle.styleW400(AppColor.black, AppFontSize.size_14),
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.white,
        hintText: widget.hintText,
        hintStyle: AppFontStyle.styleW400(AppColor.black, AppFontSize.size_12),
        contentPadding: EdgeInsets.only(
          left: AppSizes.width_8,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            passwordVisible
                ? Icons.visibility_off_outlined
                : Icons.visibility_outlined,
            color: AppColor.txtGrey,
          ),
          onPressed: () {
            setState(() {
              passwordVisible = !passwordVisible;
            });
          },
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
