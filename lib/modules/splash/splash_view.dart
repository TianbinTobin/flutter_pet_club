import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pet_club/gen/assets.gen.dart';
import 'package:pet_club/common/values/colors.dart';
import 'package:pet_club/modules/splash/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 812.h,
      color: ColorConstants.splashBackgroundColor,
      child: Stack(
        children: [
          Positioned.fill(
            child: Assets.images.common.splashBackground
                .image(fit: BoxFit.fitWidth, alignment: Alignment.bottomCenter),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 50.h,
            child: Assets.images.common.splashLogo.image(),
          ),
          Positioned(
            top: 30.h,
            right: 16.w,
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(90.w, 27.h),
                maximumSize: Size(double.infinity, 27.h),
                side: BorderSide(color: ColorConstants.tertiary),
              ),
              onPressed: () {
                controller.skipToLogin();
              },
              child: Obx(
                () => Text(
                  '${controller.seconds}跳过',
                  style: TextStyle(color: ColorConstants.tertiaryText),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
