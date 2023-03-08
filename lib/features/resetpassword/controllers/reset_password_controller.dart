// ignore_for_file: unused_field

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';

class ResetPasswordController extends GetxController {
  ResetPasswordController(this._client);

  final IApiClient _client;

  bool isShowProgress = false;
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  void onCreateAccountClick() {
    Get.toNamed(Routes.signup);
  }

  void onResetPassClick() {
    ///Get.toNamed(Routes.forgotPassword);
  }
}
