import 'package:get/get.dart';
import 'package:flutter/material.dart';

class AuthController extends GetxController {
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final loginEmailController = TextEditingController();
  final loginPasswordController = TextEditingController();

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }
}
