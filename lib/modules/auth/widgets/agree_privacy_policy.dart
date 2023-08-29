import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pet_club/common/values/values.dart';
import 'package:pet_club/modules/auth/widgets/dialog_privacy_policy.dart';

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
            Get.dialog(const DialogPrivacyPolicy());
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
