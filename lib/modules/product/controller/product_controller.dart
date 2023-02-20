import 'package:amazon_clone/modules/add_prodcut/repository/get_categories_repository.dart';
import 'package:amazon_clone/modules/add_prodcut/response/get_categories_response.dart';
import 'package:amazon_clone/modules/product/model/product.dart';
import 'package:amazon_clone/modules/product/repository/product_repository.dart';
import 'package:amazon_clone/modules/product/response/product_response.dart';
import 'package:get/state_manager.dart';

class ProductController extends GetxController {
  RxList<Product> dailyDeals = <Product>[].obs;
  RxList<String> productCategories = <String>[].obs;

  ProductRepository productRepository = ProductRepository();
  GetCategoriesRepository getCategoriesRepository = GetCategoriesRepository();
  getDailyDeals() async {
    ProductResponse productResponse =
        await productRepository.getProducts(category: "daily_deals");
    if (productResponse.status) {
      dailyDeals.value = productResponse.products;
    }
  }

  getCategories() async {
    GetCategoriesResponse getCategoriesResponse =
        await getCategoriesRepository.getCategories();
    if (getCategoriesResponse.status) {
      productCategories.value = getCategoriesResponse.categories;
    } else {}
  }
}
