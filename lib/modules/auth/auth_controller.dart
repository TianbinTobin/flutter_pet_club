import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pet_club/utils/logger.dart';

class AuthController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final loginEmailController = TextEditingController();
  final loginPasswordController = TextEditingController();

  final isAgreed = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    logger.d('AuthController onInit');
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    logger.d('AuthController onReady');
  }

  @override
  void onClose() {
    // TODO: implement onClose
    logger.d('AuthController onClose');
    super.onClose();
  }

  void changeIsAgreed(bool flag) {
    isAgreed.value = flag;
  }
}
