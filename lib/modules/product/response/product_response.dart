import 'package:amazon_clone/modules/product/model/product.dart';

class ProductResponse {
  bool status;
  String message;
  List<Product> products;
  ProductResponse({required this.products,required this.status,required this.message});
}
