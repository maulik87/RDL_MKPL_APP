import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/my_account/controllers/my_account_controller.dart';
import 'package:rdl_market_place_app/features/profile/controllers/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => ProfileController(Get.find()));
  }
}
