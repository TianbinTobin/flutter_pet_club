import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pet_club/common/values/colors.dart';
import 'package:pet_club/common/values/radius.dart';

class AgreePrivacyPolicy extends StatefulWidget {
  const AgreePrivacyPolicy({super.key, this.onChange});

  final void Function(bool)? onChange;

  @override
  State<StatefulWidget> createState() => AgreePrivacyPolicyState();
}

class AgreePrivacyPolicyState extends State<AgreePrivacyPolicy> {
  bool isCheck = false;

  void setIsCheck(bool? value) {
    setState(() {
      isCheck = value ?? !isCheck;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
            width: 32.w,
            child: Checkbox(
              value: isCheck,
              side: BorderSide(color: ColorConstants.tertiary),
              onChanged: (checked) {
                setIsCheck(checked);
              },
            )),
        GestureDetector(
          onTap: () {
            setIsCheck(!isCheck);
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
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ));
          },
          child: const Text(
            '《用户服务协议》',
            style: TextStyle(color: ColorConstants.primary),
          ),
        ),
      ],
    );
  }
}
