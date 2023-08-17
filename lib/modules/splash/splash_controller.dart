import 'dart:async';
import 'package:get/get.dart';
import 'package:pet_club/routes/routes.dart';

class SplashController extends GetxController {
  final seconds = 3.obs;
  late final Timer timer;

  @override
  void onReady() async {
    super.onReady();
    waitingToLogin();
  }

  void waitingToLogin() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (t) {
        seconds.value--;
        if (seconds.value <= 0) {
          t.cancel();
          Get.offNamed(AppRoutes.LOGIN);
        }
      },
    );
  }

  void skipToLogin() {
    timer.cancel();
    Get.offNamed(AppRoutes.LOGIN);
  }
}
