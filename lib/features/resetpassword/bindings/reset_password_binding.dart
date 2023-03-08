import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/resetpassword/controllers/reset_password_controller.dart';

class ResetPasswordBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => ResetPasswordController(Get.find()));
  }
}
