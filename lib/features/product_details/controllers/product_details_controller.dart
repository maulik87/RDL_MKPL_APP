import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';

class ProductDetailsController extends GetxController {
  ProductDetailsController(this._client);

  final IApiClient _client;

  RxBool isShowProgress = false.obs;

  PageController pageController = PageController(initialPage: 0);
}
