import 'package:amazon_clone/helper/config.dart';

class Constants {
  // signin
  static const String signinUrl = "${Config.baseUrl}/signin";
  static const String signInUsernameKey = "username";
  static const String signInPasswordKey = "password";

  // products
  static const String getProductsUrl = "${Config.baseUrl}/get_products";
  static const String addProductUrl =  "${Config.baseUrl}/add_product";
}
