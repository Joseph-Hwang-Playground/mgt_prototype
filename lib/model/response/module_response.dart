class BaseModuleResponse {
  String name;
  String imgUrl;
  String description;
  double price;

  BaseModuleResponse(this.name, this.imgUrl, this.description, this.price);
}

class FunctionModuleResponse extends BaseModuleResponse {
  String function;

  FunctionModuleResponse(String name, String imgUrl, String description,
      double price, this.function)
      : super(name, imgUrl, description, price);
}

class DesignModuleResponse extends BaseModuleResponse {
  String design;

  DesignModuleResponse(
      String name, String imgUrl, String description, double price, this.design)
      : super(name, imgUrl, description, price);
}
