import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'package:pet_club/gen/assets.gen.dart';
import 'package:pet_club/modules/auth/auth.dart';
import 'package:pet_club/common/views/views.dart';
import 'package:pet_club/common/values/values.dart';
import 'package:pet_club/modules/auth/widgets/widgets.dart';

class AuthView extends GetView<AuthController> {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return RoutePageView(
      child: Scaffold(
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
                child: AgreePrivacyPolicy(
                  onChange: (isCheck) {
                    controller.isAgreed.value = isCheck;
                  },
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
                            onPressed: () {
                              EasyLoading.show(status: 'loading');
                            },
                          ),
                          SizedBox(width: 50.w),
                          LoginTypeButton(
                            text: 'QQ登录',
                            icon: Assets.images.icons.loginQq.svg(),
                            onPressed: () {
                              EasyLoading.dismiss();
                            },
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
      ),
    );
  }
}
