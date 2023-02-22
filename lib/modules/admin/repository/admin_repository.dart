import 'package:amazon_clone/helper/constants.dart';
import 'package:amazon_clone/modules/admin/response/add_category_response.dart';
import 'package:get/get.dart';

class AdminRepository extends GetConnect {
  addCategory({required String categoryName}) async {
    FormData body = FormData({"category_name": categoryName});
    Response response = await post(Constants.addCategory, body);
    return AddCategoryResponse(status: response.status.isOk, message: response.body["message"]);
  }
}
