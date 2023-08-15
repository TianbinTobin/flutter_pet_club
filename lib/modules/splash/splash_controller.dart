import 'dart:async';
import 'package:get/get.dart';
import 'package:pet_club/routes/routes.dart';

class SplashController extends GetxController {
  final countDown = 3.obs;

  @override
  void onReady() async {
    super.onReady();
    await _initFunction();
    await Get.offNamed(AppRoutes.LOGIN);
  }

  Future<void> _initFunction() async {
    final t = Timer.periodic(
      Duration(seconds: 1),
      (t) {
        countDown.value--;
      } ,
    );
    //simulate some long running operation
    await Future.delayed(Duration(seconds: 3));
    //cancel the timer once we are done
    t.cancel();
  }
}
