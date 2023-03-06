import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/bottom_bar/controllers/bottom_bar_controller.dart';
import 'package:rdl_market_place_app/features/home/controllers/home_controller.dart';
import 'package:rdl_market_place_app/features/my_account/controllers/my_account_controller.dart';

class BottomBarBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => BottomBarController(Get.find()));

    Get.lazyPut(() => HomeController(Get.find()));
    Get.lazyPut(() => MyAccountController(Get.find()));
  }
}
