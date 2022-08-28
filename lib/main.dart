import 'package:ecommers/pages/food/popular_food_detail.dart';
import 'package:ecommers/pages/food/recommended_food_detail.dart';
import 'package:ecommers/pages/home/main_food_page.dart';
import 'package:ecommers/routes/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controllers/popular_product_controller.dart';
import 'controllers/recommended_product_controller.dart';
import 'helper/dependencies.dart' as dep;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<PopullarProductController>().getPopularProductList();
    Get.find<RecommendedProductController>().getRecommendedProductList();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MAJAFood',
      home: MainFoodPage(),
      initialRoute: RouteHelper.initial,
      getPages: RouteHelper.routes,
      //home: PopularFoodDetail(),
      //home: RecommendedFoodDetail(),
    );
  }
}
//7.52
