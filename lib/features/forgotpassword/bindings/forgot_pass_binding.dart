import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/forgotpassword/controllers/forgot_pass_controller.dart';
import 'package:rdl_market_place_app/features/login/controllers/login_controller.dart';

class ForgotPassBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => ForgotPassController(Get.find()));
  }
}
