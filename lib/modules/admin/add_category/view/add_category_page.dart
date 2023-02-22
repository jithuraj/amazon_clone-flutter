import 'package:amazon_clone/modules/admin/controller/admin_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddCategoryPage extends StatelessWidget {
  TextEditingController categoryNameController = TextEditingController();
  AddCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    AdminController adminController = Get.put(AdminController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: categoryNameController,
            ),
            ElevatedButton(
                onPressed: () {
                  adminController.addCategory(
                    categoryName: categoryNameController.text,
                    onSuccess: () {
                      categoryNameController.clear();
                    },
                  );
                },
                child: Text("add category"))
          ],
        ),
      ),
    );
  }
}
