import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pet_club/common/values/values.dart';
import 'package:pet_club/common/widgets/widgets.dart';
import 'package:pet_club/modules/auth/widgets/login_filled_button.dart';
import 'package:pet_club/utils/logger.dart';

class DialogPrivacyPolicy extends StatelessWidget {
  const DialogPrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
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
              Center(
                child: Text(
                  '使用协议与隐私政策',
                  style: TextStyle(
                    color: ColorConstants.primaryText,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '感谢您使用链课课',
                  style: TextStyle(
                    color: ColorConstants.primaryText,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text.rich(TextSpan(
                  style: TextStyle(
                    color: ColorConstants.primaryText,
                    fontSize: 14.sp,
                  ),
                  children: [
                    TextSpan(text: '为了更好地保障您的个人权益，请认真阅读'),
                    TextSpan(
                      text: '《用户协议》',
                      style: TextStyle(color: ColorConstants.primary),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          showToast('《用户协议》');
                        },
                    ),
                    TextSpan(
                      text: '《隐私政策》',
                      style: TextStyle(color: ColorConstants.primary),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          showToast('《隐私政策》');
                        },
                    ),
                    TextSpan(text: '的全部内容，同意并接受全部条款后开始使用我们的产品和服务。'),
                  ],
                )),
              ),
              SizedBox(height: 10.h),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  '若选择不同意，将无法使用我们的产品和服务，并退出应用。',
                  style: TextStyle(
                    color: ColorConstants.primaryText,
                    fontSize: 14.sp,
                  ),
                ),
              ),
              SizedBox(height: 16.h),
              UnconstrainedBox(
                child: LoginFilledButton(
                  text: '同意',
                  width: 215,
                  height: 40,
                  onPressed: () {},
                ),
              ),
              SizedBox(height: 10.h),
              GestureDetector(
                onTap: () async {
                  logger.d('暂不同意，退出使用');
                  ServicesBinding.instance
                      .exitApplication(AppExitType.required);
                },
                child: Text(
                  '暂不同意，退出使用',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: ColorConstants.tertiaryText,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
