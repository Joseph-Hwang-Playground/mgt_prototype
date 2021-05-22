import 'module_response.dart';

class BottleResponse {
  String name;
  String description;
  // String imgUrl;
  double price;
  List<BaseModuleResponse> modules;

  BottleResponse(
      this.name,
      this.description,
      // this.imgUrl,
      this.price,
      this.modules);
}
