import 'package:get/get.dart';
import 'package:rdl_market_place_app/core/services/dio_client.dart';

class SubCategoriesController extends GetxController {
  SubCategoriesController(this._client);

  final IApiClient _client;

  RxBool isShowProgress = false.obs;
}
