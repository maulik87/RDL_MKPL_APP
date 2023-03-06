import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/my_account/controllers/my_account_controller.dart';

class MyAccountBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => MyAccountController(Get.find()));
  }
}
