import 'package:amazon_clone/helper/config.dart';

class Constants {
  // signin
  static const String signinUrl = "${Config.baseUrl}/signin";
  static const String signInUsernameKey = "username";
  static const String signInPasswordKey = "password";

  // products
  static const String getProductsUrl = "${Config.baseUrl}/get_products";
  static const String addProductUrl =  "${Config.baseUrl}/add_product";
  static const String getCategoriesUrl =  "${Config.baseUrl}/get_categories";
  static const String addCategory = "${Config.baseUrl}/add_category";
}
