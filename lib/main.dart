import 'package:ecommers/pages/food/popular_food_detail.dart';
import 'package:ecommers/pages/food/recommended_food_detail.dart';
import 'package:ecommers/pages/home/main_food_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MAJAFood',
      //home: MainFoodPage(),
      //home: PopularFoodDetail(),
      home: RecommendedFoodDetail(),
    );
  }
}
