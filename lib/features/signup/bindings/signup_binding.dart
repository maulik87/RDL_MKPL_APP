import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/signup/controllers/signup_controller.dart';

class SignupBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => SignupController(Get.find()));
  }
}
