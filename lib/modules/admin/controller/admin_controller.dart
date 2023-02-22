import 'package:amazon_clone/modules/admin/repository/admin_repository.dart';
import 'package:amazon_clone/modules/admin/response/add_category_response.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AdminController extends GetxController {
  AdminRepository adminRepository = AdminRepository();

  addCategory(
      {required String categoryName, required Function() onSuccess}) async {
    AddCategoryResponse addCategoryResponse =
        await adminRepository.addCategory(categoryName: categoryName);
    if (addCategoryResponse.status) onSuccess();
    showModalBottomSheet(
      context: Get.context!,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(28.0),
          child: Text(addCategoryResponse.message),
        );
      },
    );
  }
}
