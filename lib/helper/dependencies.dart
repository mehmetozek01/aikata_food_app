import 'package:get/get.dart';
import 'package:project_aikata_food/controllers/cart_controller.dart';
import 'package:project_aikata_food/controllers/popular_product_controller.dart';
import 'package:project_aikata_food/controllers/recommended_product_controller.dart';
import 'package:project_aikata_food/data/api/api_client.dart';
import 'package:project_aikata_food/data/repository/cart_repo.dart';
import 'package:project_aikata_food/data/repository/popular_product_repo.dart';
import 'package:project_aikata_food/data/repository/recommended_product_repo.dart';
import 'package:project_aikata_food/utils/app_constants.dart';

Future<void> init() async {
  //api client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));
  //repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => RecommendedProductRepo(apiClient: Get.find()));
  Get.lazyPut(() => CartRepo());
  //controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
  Get.lazyPut(
      () => RecommendedProductController(recommendedProductRepo: Get.find()));
  Get.put(CartController(cartRepo: Get.find())); //lazyput olabilir
}
