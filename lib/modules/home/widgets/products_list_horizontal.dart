import 'package:amazon_clone/modules/product/controller/product_controller.dart';
import 'package:amazon_clone/modules/product/model/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class ProductsListHorizontal extends StatelessWidget {
  String categoryName;
  ProductsListHorizontal(
      {super.key, required this.categoryName});

  @override
  Widget build(BuildContext context) {
    ProductController productController = Get.put(ProductController());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            categoryName,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          height: 200,
          child: Obx(
            (() => ListView.builder(
                  itemCount: productController.dailyDeals.length,
                  itemBuilder: ((context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Card(
                        elevation: 5,
                        clipBehavior: Clip.antiAlias,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Image.network(
                                productController.dailyDeals[index].iconUrl,
                                fit: BoxFit.cover,
                                width: 150,
                                height: 90,
                              ),
                            ),
                            Text(
                              productController.dailyDeals[index].name,
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
                  scrollDirection: Axis.horizontal,
                )),
          ),
        )
      ],
    );
  }
}
