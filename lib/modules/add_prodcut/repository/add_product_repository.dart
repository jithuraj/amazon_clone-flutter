import 'package:amazon_clone/helper/constants.dart';
import 'package:amazon_clone/modules/add_prodcut/response/add_product_response.dart';
import 'package:get/get_connect.dart';

class AddProductRepository extends GetConnect {
  addProduct({required String name, required int price}) async {
    bool status = false;
    String message = "";
    FormData data = FormData({"name": name, "price": price});
    Response response = await post(Constants.addProductUrl, data);
    if (response.statusCode == 200) {
      status = response.body["status"];
      message = response.body["message"];
    }
    return AddProductResponse(status: status, message: message);
  }

}
