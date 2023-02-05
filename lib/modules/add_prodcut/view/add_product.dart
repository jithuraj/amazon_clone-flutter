import 'package:amazon_clone/modules/add_prodcut/controller/add_prodcut_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class AddProductPage extends StatelessWidget {
  String name = "";
  int price = 0;
  AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    AddProductController addProductController = Get.put(AddProductController());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(hintText: "name"),
              onChanged: (value) {
                name = value;
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "price",
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                price = int.parse(value);
              },
            ),
            ElevatedButton(
                onPressed: (() {
                  addProductController.addProduct(name: name, price: price);
                }),
                child: Text("Add product"))
          ],
        ),
      ),
    );
  }
}
