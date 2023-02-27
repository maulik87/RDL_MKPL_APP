import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
import 'package:rdl_market_place_app/core/config/app_exception.dart';
import 'package:rdl_market_place_app/core/config/debug.dart';
import 'package:rdl_market_place_app/core/config/utils.dart';
import 'package:rdl_market_place_app/core/constants/end_point.dart';
import 'package:rdl_market_place_app/core/constants/end_point_params.dart';
import 'package:rdl_market_place_app/core/constants/widget_ids.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';

class ResetPasswordController extends GetxController {
  ResetPasswordController(this._client);

  final IApiClient _client;

  bool isShowProgress = false;
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  void onCreateAccountClick(){
    Get.toNamed(Routes.signup);
  }

  void onResetPassClick(){
    ///Get.toNamed(Routes.forgotPassword);
  }

}
