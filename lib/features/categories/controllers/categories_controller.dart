import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';
import 'package:rdl_market_place_app/features/home/datamodel/category_data.dart';

class CategoriesController extends GetxController {
  CategoriesController(this._client);
  dynamic arguments = Get.arguments;

  final IApiClient _client;

  RxBool isShowProgress = false.obs;
  List<Category> categories = [];

  @override
  void onInit() {
    _init();
    super.onInit();
  }

  _init() {
    if (arguments != null) {
      categories = arguments as List<Category>;
    }
  }
}
