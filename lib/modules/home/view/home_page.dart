import 'package:amazon_clone/modules/admin/view/admin_page.dart';
import 'package:amazon_clone/modules/home/controller/home_controller.dart';
import 'package:amazon_clone/modules/home/widgets/products_list_horizontal.dart';
import 'package:amazon_clone/modules/product/controller/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    ProductController productController = Get.put(ProductController());

    productController.getDailyDeals();

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: const Center(
          child: Text(
            'amazon',
            textAlign: TextAlign.left,
            style: TextStyle(fontSize: 20),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              homeController.logout();
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            ProductsListHorizontal(
              categoryName: "Today's Deals",
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: (() {
                Get.to(() => const AdminPage());
              }),
              child: const Text("admin page"),
            ),
          ],
        ),
      ),
    );
  }
}
