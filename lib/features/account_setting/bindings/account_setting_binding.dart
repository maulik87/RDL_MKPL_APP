import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/account_setting/controllers/account_setting_controller.dart';
import 'package:rdl_market_place_app/features/my_account/controllers/my_account_controller.dart';

class AccountSettingBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => AccountSettingController(Get.find()));
  }
}
