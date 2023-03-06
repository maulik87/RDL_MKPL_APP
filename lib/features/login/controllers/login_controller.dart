import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_exception.dart';
import 'package:rdl_market_place_app/core/config/debug.dart';
import 'package:rdl_market_place_app/core/config/preference.dart';
import 'package:rdl_market_place_app/core/config/utils.dart';
import 'package:rdl_market_place_app/core/constants/end_point.dart';
import 'package:rdl_market_place_app/core/constants/end_point_params.dart';
import 'package:rdl_market_place_app/core/constants/widget_ids.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';
import 'package:rdl_market_place_app/features/login/datamodel/login_data.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';

class LoginController extends GetxController {
  LoginController(this._client);

  final IApiClient _client;

  bool isShowProgress = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  void onCreateAccountClick() {
    Get.toNamed(Routes.signup);
  }

  void onForgotPassClick() {
    Get.toNamed(Routes.forgotPassword);
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

  Future<void> login() async {
    if (await validateLoginDetail()) {
      isShowProgress = true;
      update([WidgetIds.progressViewId]);

      try {
        Map<String, dynamic> map = {
          Params.email: emailController.text.trim(),
          Params.password: passController.text.trim(),
          Params.forceLogin: true
        };

        final res = await _client.post(
          EndPoint.login,
          data: map,
        );

        LoginData loginData =
            LoginData.fromJson(res.data as Map<String, dynamic>);

        if ((loginData.status??false) && loginData.data != null) {
          await Preference.shared.setBool(Preference.isLogin, true);
          await Preference.shared.setString(Preference.token, loginData.data!.token);
          _client.updateAuthorizationHeader();
        }else{
          unawaited(Utils.showToast(Get.context!, loginData.message??EnumLocal.errSomethingWentWrong.name.tr));
        }

        Get.offAllNamed(Routes.home);
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

  @override
  void onInit() {
    if (Debug.debug) {
      //emailController.text = "maulik456@yopmail.com";
      //passController.text = "Test@123";
      emailController.text = "nirav@yopmail.com";
      passController.text = "12345678";
    }
    super.onInit();
  }
}
