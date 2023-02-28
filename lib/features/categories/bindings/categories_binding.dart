import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/categories/controllers/categories_controller.dart';

class CategoriesBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => CategoriesController(Get.find()));
  }
}
