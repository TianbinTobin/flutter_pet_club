import 'dart:async';
import 'package:get/get.dart';
import 'package:pet_club/routes/routes.dart';
import 'package:pet_club/common/services/services.dart';

class SplashController extends GetxController {
  final seconds = 3.obs;
  late final Timer timer;

  @override
  void onInit() {
    super.onInit();
    SystemService.enterSystemUIFullscreen();
  }

  @override
  void onReady() {
    super.onReady();
    waitingToLogin();
  }

  void waitingToLogin() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (t) {
        seconds.value--;
        if (seconds.value <= 0) {
          skipToLogin();
        }
      },
    );
  }

  void skipToLogin() {
    timer.cancel();
    Get.offNamed(AppRoutes.LOGIN);
    SystemService.exitSystemUIFullscreen();
  }
}
