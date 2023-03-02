import 'package:get/get.dart';
import 'package:rdl_market_place_app/features/search_result/controllers/search_result_controller.dart';

class SearchResultBinding extends Bindings {
  @override
  void dependencies() {
    /// Dependencies injection
    Get.lazyPut(() => SearchResultController(Get.find()));
  }
}
