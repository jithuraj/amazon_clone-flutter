import 'package:amazon_clone/modules/add_prodcut/repository/add_product_repository.dart';
import 'package:amazon_clone/modules/add_prodcut/repository/get_categories_repository.dart';
import 'package:amazon_clone/modules/add_prodcut/response/add_product_response.dart';
import 'package:amazon_clone/modules/add_prodcut/response/get_categories_response.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class AddProductController extends GetxController {

  AddProductRepository addProductRepository = AddProductRepository();
  GetCategoriesRepository getCategoriesRepository = GetCategoriesRepository();

  addProduct(
      {required String name,
      required int price,
      required String category,
      required Function() onSuccess}) async {
    AddProductResponse addProductResponse =
        await addProductRepository.addProduct(name: name, price: price);
    if (addProductResponse.status) {
      onSuccess();
      showModalBottomSheet(
        context: Get.context!,
        builder: ((context) => Padding(
              padding: const EdgeInsets.all(20),
              child: Text(addProductResponse.message),
            )),
      );
    }
  }

  getCategories(){
    
  }
}
