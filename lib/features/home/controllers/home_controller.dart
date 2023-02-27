import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_enums.dart';
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

class HomeController extends GetxController {
  HomeController(this._client);

  final IApiClient _client;

  bool isShowProgress = false;


  Future<void> getHomeData() async {
    /*if (await validateLoginDetail()) {
      isShowProgress = true;
      update([WidgetIds.progressViewId]);

      try {

        Map<String,dynamic> map = {
          Params.email: emailController.text.trim(),
        Params.password:passController.text.trim(),
        Params.forceLogin:false};

        final res = await _client.post(EndPoint.login, data: map,);

        LoginData loginData = LoginData.fromJson(res.data as Map<String,dynamic>);

        if(loginData.data != null) {
          Preference.shared.setString(Preference.token, loginData.data!.token);
        }

        // Get.offAllNamed(newRouteName);

      } on AppException catch (exception) {
        unawaited(Utils.showToast(Get.context!, exception.message));
      } catch (e) {
        Debug.logE(e.toString());
        unawaited(Utils.showToast(Get.context!, EnumLocal.errSomethingWentWrong.name.tr));
      }finally {
        isShowProgress = false;
        update([WidgetIds.progressViewId]);
      }
    }*/
  }
}
