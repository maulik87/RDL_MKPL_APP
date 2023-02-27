import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/home/controllers/home_controller.dart';
import 'package:rdl_market_place_app/features/login/controllers/login_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => HomeController(Get.find()));
  }
}
