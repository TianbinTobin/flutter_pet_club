import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pet_club/gen/assets.gen.dart';
import 'package:pet_club/common/constants/colors.dart';
import 'package:pet_club/modules/splash/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.splashBackgroundColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 350.0,
            padding: EdgeInsets.only(top: 120.0),
            child: Assets.images.common.loadingLogo.image(width: 350.0, height: 350.0),
          ),
          Transform.translate(
            offset: Offset(0, -120.0),
            child: Container(
              width: 350.0,
              padding: EdgeInsets.fromLTRB(52.0, 0, 30.0, 0),
              child: Assets.images.common.loadingText.image(width: 268.0, height: 268.0),
            ),
          ),
          Obx(() => Text('${controller.countDown}')),
        ],
      ),
    );
  }
}
