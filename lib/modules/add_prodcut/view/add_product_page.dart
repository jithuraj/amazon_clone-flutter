import 'package:amazon_clone/modules/add_prodcut/controller/add_prodcut_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class AddProductPage extends StatefulWidget {
  AddProductPage({super.key});

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  String category = "category";

  @override
  Widget build(BuildContext context) {
    AddProductController addProductController = Get.put(AddProductController());
    addProductController.getCategories();
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(category),
                    Obx((() {
                      return PopupMenuButton(
                          initialValue:
                              addProductController.productCategories.isEmpty
                                  ? null
                                  : addProductController.productCategories[0],
                          onSelected: (value) {
                            print('jr  = ${value}');
                            setState(() {
                              category = value;
                            });
                          },
                          icon: Icon(Icons.add),
                          itemBuilder: ((context) {
                            return addProductController.productCategories
                                .map((e) => PopupMenuItem(
                                      child: Text(e),
                                      value: e,
                                    ))
                                .toList();
                          }));
                    })),
                  ],
                ),
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(hintText: "name"),
                ),
                TextFormField(
                  controller: priceController,
                  decoration: InputDecoration(
                    hintText: "price",
                  ),
                  keyboardType: TextInputType.number,
                ),
                ElevatedButton(
                    onPressed: (() {
                      addProductController.addProduct(
                          name: nameController.text,
                          price: int.parse(priceController.text),
                          onSuccess: () {
                            print('jr onSuccess called');
                            nameController.clear();
                            priceController.clear();
                          });
                    }),
                    child: Text("Add product")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
