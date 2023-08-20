import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pet_club/common/values/colors.dart';

class LoginTypeButton extends StatelessWidget {
  final String text;
  final Widget icon;
  final void Function() onPressed;

  const LoginTypeButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          SizedBox(width: 40.0, height: 40.0, child: icon),
          SizedBox(height: 8.h),
          Text(
            text,
            style: TextStyle(
              fontSize: 12.sp,
              fontWeight: FontWeight.w600,
              color: ColorConstants.primaryText,
            ),
          ),
        ],
      ),
    );
  }
}
