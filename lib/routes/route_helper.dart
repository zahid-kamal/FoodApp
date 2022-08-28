import 'package:ecommers/pages/home/main_food_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class RouteHelper {
  static const String initial = "/";

  static List<GetPage> routes = [
    GetPage(name: "/", page: () => MainFoodPage()),
  ];
}
