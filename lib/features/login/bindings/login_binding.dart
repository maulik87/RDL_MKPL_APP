import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/login/controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => LoginController(Get.find()));
  }
}
