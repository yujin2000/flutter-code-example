import 'package:get/get.dart';

class ProductController extends GetxController {
  Set<String> products = {};
  Set<String> leftProducts = {};
  Set<String> rightProducts = {};

  void addProduct(String product) {
    products.add(product);
    update();
  }

  void pushZone(bool isLeft, String product) {
    if (isLeft) {
      leftProducts.add(product);
    } else {
      rightProducts.add(product);
    }
    products.remove(product);
    update();
  }
}
