import 'package:amazon_clone/modules/product/model/product.dart';
import 'package:amazon_clone/modules/product/repository/product_repository.dart';
import 'package:amazon_clone/modules/product/response/product_response.dart';
import 'package:get/state_manager.dart';

class ProductController extends GetxController {
  RxList<Product> dailyDeals = <Product>[].obs;

  ProductRepository productRepository = ProductRepository();
  getDailyDeals() async {
    ProductResponse productResponse =
        await productRepository.getProducts(category: "daily_deals");
    if (productResponse.status) {
      dailyDeals.value = productResponse.products;
      print('jr  = ${productResponse.products}');
    }
  }
}
