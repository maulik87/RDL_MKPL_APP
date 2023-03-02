import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/search/controllers/search_controller.dart';

class SearchBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => SearchController(Get.find()));
  }
}
