import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/product_details/controllers/product_details_controller.dart';

class ProductDetailsBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => ProductDetailsController(Get.find()));
  }
}
