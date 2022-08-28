import 'package:ecommers/data/api/repository/popular_product_repo.dart';
import 'package:ecommers/models/products_model.dart';
import 'package:get/get.dart';

class PopullarProductController extends GetxController {
  final PopularProductRepo popularProductRepo;

  PopullarProductController({required this.popularProductRepo});
  List<dynamic> _popularProductList = [];
  List<dynamic> get popularProductList => _popularProductList;
  bool _isLoaded = false;
  bool get isloaded => _isLoaded;

  Future<void> getPopularProductList() async {
    Response response = await popularProductRepo.getPopularProductList();
    if (response.statusCode == 200) {
      print("Got products");
      _popularProductList = [];
      _popularProductList.addAll(Product.fromJson(response.body).products);
      _isLoaded = true;
      //print(_popularProductList);
      update();
    } else {
      print("Not get List");
    }
  }
}
