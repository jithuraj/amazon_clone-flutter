class GetCategoriesResponse {
  bool status;
  String message;
  List<String> categories;
  GetCategoriesResponse(
      {required this.status, required this.message, required this.categories});
}
