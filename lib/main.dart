import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/preference.dart';
import 'package:rdl_market_place_app/core/constants/end_point.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';
import 'package:rdl_market_place_app/features/app/app.dart';

Future<void> main() async {
  /// Initialize
  WidgetsFlutterBinding.ensureInitialized();

  /// Initialize DioClient (For the API)
  Get.lazyPut<IApiClient>(
        () => DioClient(
      Dio(),
      baseUrl: EndPoint.baseURL,
    ),
    fenix: true
  );

  /// Initialize Preference
  await Preference().instance();

  runApp(const RDLMarketPlaceApp());
}
