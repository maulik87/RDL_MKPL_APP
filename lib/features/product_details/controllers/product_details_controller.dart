// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';
import 'package:rdl_market_place_app/features/home/datamodel/product_list_data.dart';

class ProductDetailsController extends GetxController {
  ProductDetailsController(this._client);

  dynamic arguments = Get.arguments;

  final IApiClient _client;

  RxBool isShowProgress = false.obs;

  PageController pageController = PageController(initialPage: 0);

  late Product product;

  @override
  void onInit() {
    _init();
    super.onInit();
  }

  _init() {
    if (arguments != null) {
      product = arguments as Product;
    }
  }
}
