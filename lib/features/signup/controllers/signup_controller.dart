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
import 'package:rdl_market_place_app/features/signup/data_model/register_data.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';

class SignupController extends GetxController {
  SignupController(this._client);

  final IApiClient _client;

  bool isShowProgress = false;
  TextEditingController fullNameController = TextEditingController();
  TextEditingController companyNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void onCreateAccountClick() {
    Get.toNamed("page");
  }

  Future<bool> validateLoginDetail() async {
    if (emailController.text.isEmpty) {
      unawaited(
        Utils.showToast(Get.context!, EnumLocal.errEmail.name.tr),
      );
      return false;
    }
    if (passController.text.isEmpty) {
      unawaited(
        Utils.showToast(Get.context!, EnumLocal.errPassword.name.tr),
      );
      return false;
    }
    FocusScope.of(Get.context!).unfocus();
    return true;
  }

  Future<void> signup() async {
    if (await validateLoginDetail()) {
      isShowProgress = true;
      update([WidgetIds.progressViewId]);

      try {
        Map<String, dynamic> map = {
          Params.email: emailController.text.trim(),
          Params.password: passController.text,
          if (fullNameController.text.isNotEmpty)
            Params.representativeName: fullNameController.text.trim(),
          if (companyNameController.text.isNotEmpty)
            Params.companyName: companyNameController.text.trim()
        };

        final res = await _client.put(EndPoint.register, data: map);

        RegisterData registerData = RegisterData.fromJson(res.data as Map<String, dynamic>);

        unawaited(Utils.showToast(Get.context!, registerData.message));
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
