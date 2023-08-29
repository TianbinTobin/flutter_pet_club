import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:pet_club/common/values/radius.dart';

class LoginFilledButton extends StatelessWidget {
  final String? text;
  final Widget? icon;
  final Color? color;
  final double? width;
  final double? height;
  final double? fontSize;
  final Color? backgroundColor;
  final void Function() onPressed;

  const LoginFilledButton({
    super.key,
    required this.onPressed,
    this.text,
    this.icon,
    this.color,
    this.width = 315,
    this.height = 48,
    this.fontSize = 16.0,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    if (icon != null) {
      return FilledButton.icon(
        onPressed: onPressed,
        icon: icon!,
        style: buildButtonStyle(context),
        label: buildText(context),
      );
    } else {
      return FilledButton(
        onPressed: onPressed,
        style: buildButtonStyle(context),
        child: buildText(context),
      );
    }
  }

  Widget buildText(BuildContext context) {
    return Text(
      '$text',
      style: TextStyle(
        color: color,
        fontSize: fontSize!.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  ButtonStyle buildButtonStyle(BuildContext context) {
    return FilledButton.styleFrom(
      fixedSize: Size(width!.w, height!.h),
      backgroundColor: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: RadiusConstants.k10pxRadius,
      ),
    );
  }
}
