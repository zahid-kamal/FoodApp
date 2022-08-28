import 'package:ecommers/controllers/popular_product_controller.dart';
import 'package:ecommers/data/api/api_client.dart';
import 'package:ecommers/data/api/repository/popular_product_repo.dart';
import 'package:get/get.dart';

import '../controllers/recommended_product_controller.dart';
import '../data/api/repository/recommended_product_repo.dart';
import '../utils/app_constants.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));

  //coltrollers
  Get.lazyPut(() => PopullarProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
}
