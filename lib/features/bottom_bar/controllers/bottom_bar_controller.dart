// ignore_for_file: unused_field

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';

class BottomBarController extends GetxController {
  BottomBarController(this._client);

  final IApiClient _client;

  PageController pageView = PageController(initialPage: 0, keepPage: true);

  void onBottomBarItemClick(String title) {
    if (title == 'Home') {
      pageView.jumpToPage(0);
    } else if (title == 'Dashboard') {
      pageView.jumpToPage(1);
    } else if (title == 'Favourite') {
      pageView.jumpToPage(2);
    } else if (title == 'Profile') {
      pageView.jumpToPage(3);
    }
  }
}
