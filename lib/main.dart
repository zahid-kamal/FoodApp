import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home/main_food_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Demo',
      home: MainFoodPage(),
    );
  }
}
