import 'package:get/get.dart';
import 'package:pet_club/modules/cart/cart_controller.dart';

class CartBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<CartController>(() => CartController());
  }
}