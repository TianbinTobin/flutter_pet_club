import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pet_club/routes/routes.dart';
import 'package:pet_club/common/values/colors.dart';

class SplashSkip extends StatefulWidget {
  const SplashSkip({super.key, this.duration = 3});

  final int duration;

  @override
  State<StatefulWidget> createState() => SplashSkipState();
}

class SplashSkipState extends State<SplashSkip> {
  late int duration;
  late final Timer timer;

  void waitingToLogin() {
    timer = Timer.periodic(
      const Duration(seconds: 1),
      (t) {
        setState(() {
          duration--;
          if (duration <= 0) {
            skipToLogin();
          }
        });
      },
    );
  }

  void skipToLogin() {
    timer.cancel();
    context.go(AppRoutes.LOGIN);
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      duration = widget.duration;
      waitingToLogin();
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        minimumSize: Size(90.w, 27.h),
        maximumSize: Size(double.infinity, 27.h),
        side: BorderSide(color: ColorConstants.tertiary),
      ),
      onPressed: skipToLogin,
      child: Text(
        '$duration跳过',
        style: TextStyle(color: ColorConstants.tertiaryText),
      ),
    );
  }
}
