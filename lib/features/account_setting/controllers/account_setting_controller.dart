import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/utils.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';
import 'package:rdl_market_place_app/features/home/datamodel/profile_data.dart';

class AccountSettingController extends GetxController {
  AccountSettingController(this._client);

  final IApiClient _client;

  @override
  void onInit() {
    super.onInit();
  }
}
