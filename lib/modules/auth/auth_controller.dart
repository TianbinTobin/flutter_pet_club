import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:flutter/material.dart';
import 'package:pet_club/common/services/services.dart';

class AuthController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final loginEmailController = TextEditingController();
  final loginPasswordController = TextEditingController();

  final isAgreed = false.obs;

  @override
  void onInit() {
    super.onInit();
    services.get<Logger>().d('AuthController onInit');
  }

  @override
  void onReady() {
    super.onReady();
    services.get<Logger>().d('AuthController onReady');
  }

  @override
  void onClose() {
    services.get<Logger>().d('AuthController onClose');
    super.onClose();
  }

  void changeIsAgreed(bool flag) {
    isAgreed.value = flag;
  }
}
