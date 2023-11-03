import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:pet_club/common/services/services.dart';

class CartController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    services.get<Logger>().d('AuthController onInit');
  }
}
