class BaseModuleResponse {
  String name;
  String imgUrl;
  String description;
  double price;
  bool isSelected;

  BaseModuleResponse(
      this.name, this.imgUrl, this.description, this.price, this.isSelected);
}

class FunctionModuleResponse extends BaseModuleResponse {
  String function;

  FunctionModuleResponse(String name, String imgUrl, String description,
      double price, bool isSelected, this.function)
      : super(name, imgUrl, description, price, isSelected);
}

class DesignModuleResponse extends BaseModuleResponse {
  String design;

  DesignModuleResponse(String name, String imgUrl, String description,
      double price, bool isSelected, this.design)
      : super(name, imgUrl, description, price, isSelected);
}
