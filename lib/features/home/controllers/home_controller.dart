import 'dart:async';
import 'dart:convert';

import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/app_exception.dart';
import 'package:rdl_market_place_app/core/config/debug.dart';
import 'package:rdl_market_place_app/core/config/preference.dart';
import 'package:rdl_market_place_app/core/config/utils.dart';
import 'package:rdl_market_place_app/core/constants/end_point.dart';
import 'package:rdl_market_place_app/core/constants/widget_ids.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';
import 'package:rdl_market_place_app/features/home/datamodel/category_data.dart';
import 'package:rdl_market_place_app/features/home/datamodel/product_list_data.dart';
import 'package:rdl_market_place_app/features/home/datamodel/profile_data.dart';
import 'package:rdl_market_place_app/features/home/datamodel/refresh_token_data.dart';
import 'package:rdl_market_place_app/localization/enum_local.dart';

class HomeController extends GetxController {
  HomeController(this._client);

  final IApiClient _client;

  RxBool isShowProgress = false.obs;
  List<Category> categories = [];
  List<Product> products = [];



  Future<void> getCategories() async {
      isShowProgress.value = true;

      try {

        final res = await _client.get(
          EndPoint.categories,
        );

        CategoryData categoryData = CategoryData.fromJson(res.data as Map<String, dynamic>);

        if(categoryData.data != null) {
          categories = categoryData.data!;
        }


        update([WidgetIds.homeCategoryListViewId]);
        getProducts();
      } on AppException catch (exception) {
        unawaited(Utils.showToast(Get.context!, exception.message));
      } catch (e) {
        Debug.logE(e.toString());
        unawaited(Utils.showToast(
            Get.context!, EnumLocal.errSomethingWentWrong.name.tr));
      } finally {
        isShowProgress.value = false;
      }
  }

  Future<void> getProducts() async {
    isShowProgress.value = true;

    try {

      final res = await _client.get(
        EndPoint.products,
      );

      ProductListData productListData = ProductListData.fromJson(res.data as Map<String, dynamic>);

      if(productListData.data != null) {
        products = productListData.data!;
      }


      update([WidgetIds.homeProductListViewId]);

    } on AppException catch (exception) {
      unawaited(Utils.showToast(Get.context!, exception.message));
    } catch (e) {
      Debug.logE(e.toString());
      unawaited(Utils.showToast(
          Get.context!, EnumLocal.errSomethingWentWrong.name.tr));
    } finally {
      isShowProgress.value = false;
    }
  }

  Future<void> getUserProfile() async {

    try {

      final res = await _client.get(
        EndPoint.profile,
      );

      ProfileData profileData = ProfileData.fromJson(res.data as Map<String, dynamic>);

      if(profileData.data != null) {
        Preference.shared.setString(Preference.userData, jsonEncode(profileData.data));
      }

    } on AppException catch (exception) {
      unawaited(Utils.showToast(Get.context!, exception.message));
    } catch (e) {
      Debug.logE(e.toString());
      unawaited(Utils.showToast(
          Get.context!, EnumLocal.errSomethingWentWrong.name.tr));
    } finally {
      //isShowProgress.value = false;
    }
  }

  Future<void> getRefreshToken() async {

    try {
      isShowProgress.value = true;
      final res = await _client.post(
        EndPoint.refreshToken,
      );

      RefreshTokenData refreshTokenData = RefreshTokenData.fromJson(res.data as Map<String, dynamic>);

      if(refreshTokenData.data != null) {
        await Preference.shared.setBool(Preference.isLogin, true);
        await Preference.shared.setString(Preference.token, refreshTokenData.data!.token);
        _client.updateAuthorizationHeader();
        getCategories();
        getUserProfile();
      }

    } on AppException catch (exception) {
      isShowProgress.value = false;
      unawaited(Utils.showToast(Get.context!, exception.message));
    } catch (e) {
      Debug.logE(e.toString());
      isShowProgress.value = false;
      unawaited(Utils.showToast(
          Get.context!, EnumLocal.errSomethingWentWrong.name.tr));
    } finally {
      //isShowProgress.value = false;
    }
  }


  @override
  void onInit() {
    getRefreshToken();
    super.onInit();
  }
}
