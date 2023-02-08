import 'dart:convert';

import 'package:amazon_clone/helper/constants.dart';
import 'package:amazon_clone/modules/add_prodcut/response/get_categories_response.dart';
import 'package:get/get_connect.dart';

class GetCategoriesRepository extends GetConnect {
  getCategories() async {
    bool status = false;
    String message = '';
    List<String> categories = [];
    Response response = await get(Constants.getCategoriesUrl);
    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      status = jsonResponse["status"];
      message = jsonResponse["message"];
      for (String category in jsonResponse["categories"]) {
        categories.add(category);
      }
    }
    return GetCategoriesResponse(
        status: status, message: message, categories: categories);
  }
}
