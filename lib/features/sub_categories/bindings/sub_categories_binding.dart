import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/sub_categories/controllers/sub_categories_controller.dart';

class SubCategoriesBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => SubCategoriesController(Get.find()));
  }
}
