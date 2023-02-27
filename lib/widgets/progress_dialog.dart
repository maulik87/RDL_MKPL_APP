import 'package:flutter/material.dart';
import 'package:rdl_market_place_app/core/config/app_color.dart';

class ProgressDialog extends StatelessWidget {
  const ProgressDialog({
    super.key,
    required this.isShowProgress,
  });

  final bool isShowProgress;

  @override
  Widget build(BuildContext context) {
    if (isShowProgress) {
      return Container(
        color: AppColor.black.withOpacity(.3),
        alignment: Alignment.center,
        child: const CircularProgressIndicator(),
      );
    }

    return const SizedBox();
  }
}
