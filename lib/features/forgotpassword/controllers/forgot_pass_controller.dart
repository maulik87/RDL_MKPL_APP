import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_exception.dart';
import 'package:rdl_market_place_app/core/config/debug.dart';
import 'package:rdl_market_place_app/core/config/utils.dart';
import 'package:rdl_market_place_app/core/constants/end_point.dart';
import 'package:rdl_market_place_app/core/constants/end_point_params.dart';
import 'package:rdl_market_place_app/core/constants/widget_ids.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';
import 'package:rdl_market_place_app/features/forgotpassword/datamodel/forgot_pass_data.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';

class ForgotPassController extends GetxController {
  ForgotPassController(this._client);

  final IApiClient _client;

  bool isShowProgress = false;
  TextEditingController emailController = TextEditingController();

  void onSubmitClick() {
    Get.toNamed(Routes.resetPassword);
  }

  Future<bool> validateLoginDetail() async {
    if (emailController.text.isEmpty) {
      unawaited(
        Utils.showToast(Get.context!, EnumLocal.errEmail.name.tr),
      );
      return false;
    }
    return true;
  }

  Future<void> forgotPass() async {
    if (await validateLoginDetail()) {
      isShowProgress = true;
      update([WidgetIds.progressViewId]);

      try {
        Map<String, dynamic> map = {Params.email: emailController.text.trim()};

        var res = await _client.post(
          EndPoint.forgotPass,
          data: map,
        );

        ForgotPassData forgotPassData =
            ForgotPassData.fromJson(res.data as Map<String, dynamic>);

        unawaited(Utils.showToast(Get.context!, forgotPassData.message));
        Get.back();
      } on AppException catch (exception) {
        unawaited(Utils.showToast(Get.context!, exception.message));
      } catch (e) {
        Debug.logE(e.toString());
        unawaited(Utils.showToast(
            Get.context!, EnumLocal.errSomethingWentWrong.name.tr));
      } finally {
        isShowProgress = false;
        update([WidgetIds.progressViewId]);
      }
    }
  }
}
