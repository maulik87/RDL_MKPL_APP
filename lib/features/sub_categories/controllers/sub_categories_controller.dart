import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';
import 'package:rdl_market_place_app/features/home/datamodel/category_data.dart';

class SubCategoriesController extends GetxController {
  SubCategoriesController(this._client);
  dynamic arguments = Get.arguments;

  final IApiClient _client;

  RxBool isShowProgress = false.obs;
  late Category category;

  @override
  void onInit() {
    if (arguments != null) {
      category = arguments as Category;
    }
    super.onInit();
  }
}
