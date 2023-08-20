import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pet_club/gen/assets.gen.dart';
import 'package:pet_club/modules/auth/auth.dart';
import 'package:pet_club/common/values/values.dart';
import 'package:pet_club/modules/auth/widgets/login_type_button.dart';
import 'package:pet_club/modules/auth/widgets/login_filled_button.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            SizedBox(height: 140.h),
            SizedBox(
              width: 100.w,
              height: 108.h,
              child: Assets.images.common.appLogo.image(),
            ),
            SizedBox(height: 60.h),
            LoginFilledButton(
              text: '手机号一键登录',
              onPressed: () {},
            ),
            SizedBox(height: 20.h),
            LoginFilledButton(
              text: '微信登录',
              icon: Assets.images.icons.wechat.svg(),
              color: ColorConstants.primaryText,
              backgroundColor: ColorConstants.tertiary,
              onPressed: () {},
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: 315.w,
              height: 20.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 32.w,
                    child: Obx(
                      () => Checkbox(
                        value: controller.isAgreed.value,
                        side: BorderSide(color: ColorConstants.tertiary),
                        onChanged: (checked) {
                          controller.changeIsAgreed(checked!);
                        },
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      controller.changeIsAgreed(!controller.isAgreed.value);
                    },
                    child: Text(
                      '登录即代表您同意',
                      style: TextStyle(color: ColorConstants.tertiaryText),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.dialog(Dialog(
                        insetPadding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: RadiusConstants.k16pxRadius,
                        ),
                        child: SizedBox(
                          width: 315.w,
                          child: Padding(
                            padding: EdgeInsets.all(20).r,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Align(
                                    child: Text(
                                  '使用协议与隐私政策',
                                  style: TextStyle(
                                    color: ColorConstants.primaryText,
                                    fontSize: 18.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                )),
                              ],
                            ),
                          ),
                        ),
                      ));
                    },
                    child: Text(
                      '《用户服务协议》',
                      style: TextStyle(color: ColorConstants.primary),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 56.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LoginTypeButton(
                          text: '账号登录',
                          icon: Assets.images.icons.loginAccount.svg(),
                          onPressed: () {},
                        ),
                        SizedBox(width: 50.w),
                        LoginTypeButton(
                          text: 'QQ登录',
                          icon: Assets.images.icons.loginQq.svg(),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
