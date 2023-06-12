import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_aikata_food/controllers/popular_product_controller.dart';
import 'package:project_aikata_food/controllers/recommended_product_controller.dart';
import 'package:project_aikata_food/pages/home/food_page_body.dart';
import 'package:project_aikata_food/pages/home/main_food_page.dart';
import 'package:project_aikata_food/routes/route_helper.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.find<PopularProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
    );
  }
}
