import 'dart:convert';

import 'package:amazon_clone/helper/constants.dart';
import 'package:amazon_clone/modules/product/model/product.dart';
import 'package:amazon_clone/modules/product/response/product_response.dart';
import 'package:get/get_connect.dart';
import 'package:get/state_manager.dart';

class ProductRepository extends GetConnect {
  getProducts({required String category}) async {
    bool status = false;
    String message = "";
    List<Product> products = [];

    Map<String, String> data = {"category": category};
    Response response = await get(Constants.getProductsUrl, query: data);
    if (response.statusCode == 200) {
      var responseJson = jsonDecode(response.body);
      status = responseJson["status"] as bool;
      message = responseJson["message"];
      for (var product in responseJson["products"]) {
        products.add(Product(
            id: product["id"],
            name: product["name"],
            price: product["price"],
            iconUrl: product["icon_url"],
            category: product["category"]));
      }
    } else {
      // error
    }
    return ProductResponse(
        status: status, message: message, products: products);
  }
}
