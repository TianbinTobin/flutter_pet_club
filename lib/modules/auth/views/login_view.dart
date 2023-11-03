import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:pet_club/gen/assets.gen.dart';
import 'package:pet_club/routes/app_pages.dart';
import 'package:pet_club/common/values/colors.dart';
import 'package:pet_club/common/services/services.dart';
import 'package:pet_club/modules/auth/auth_controller.dart';
import 'package:pet_club/modules/auth/widgets/login_input_field.dart';
import 'package:pet_club/modules/auth/widgets/login_filled_button.dart';

class LoginView extends GetView<AuthController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.white,
      resizeToAvoidBottomInset: false,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 35.0, right: 35.0, bottom: 80.0),
          child: Form(
            key: controller.loginFormKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.common.appLogo.image(),
                LoginInputField(
                  controller: controller.loginEmailController,
                  keyboardType: TextInputType.emailAddress,
                  icon: Assets.images.icons.mail.svg(),
                  placeholder: 'Email Address',
                ),
                SizedBox(height: 32.0),
                LoginInputField(
                  controller: controller.loginPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  icon: Assets.images.icons.lock.svg(),
                  placeholder: 'Password',
                  password: true,
                ),
                Container(
                  margin: EdgeInsets.only(top: 16.0),
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
                SizedBox(height: 32.0),
                LoginFilledButton(
                    text: 'Login',
                    onPressed: () {
                      Get.offNamed(AppRoutes.CART);
                    }),
                SizedBox(height: 24.0),
                Text(
                  'or connect with',
                  strutStyle: StrutStyle(),
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 20.0,
                    color: ColorConstants.secondary,
                  ),
                ),
                SizedBox(height: 50.0),
                LoginFilledButton(
                  text: 'Login With WeChat',
                  fontSize: 20.0,
                  icon: Assets.images.icons.wechat.svg(width: 24, height: 24),
                  onPressed: () {
                    services
                        .get<Logger>()
                        .d(controller.loginPasswordController.text);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
