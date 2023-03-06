import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/config/utils.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';
import 'package:rdl_market_place_app/features/home/datamodel/profile_data.dart';
import 'package:rdl_market_place_app/routes/app_pages.dart';

class MyAccountController extends GetxController {
  MyAccountController(this._client);

  final IApiClient _client;

  late UserProfile? userProfile;

  @override
  void onInit() {
    userProfile = Utils.getUserProfile();
    super.onInit();
  }

  void openEditProfileScreen()
  {
    Get.toNamed(Routes.profile);
  }
}
