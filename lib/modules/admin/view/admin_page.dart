import 'package:amazon_clone/modules/add_prodcut/view/add_product_page.dart';
import 'package:amazon_clone/modules/admin/add_category/view/add_category_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.to(() => AddCategoryPage());
              },
              child: const Text("add category")),
          ElevatedButton(
              onPressed: () {
                Get.to(() => AddProductPage());
              },
              child: const Text("add product"))
        ],
      )),
    );
  }
}
