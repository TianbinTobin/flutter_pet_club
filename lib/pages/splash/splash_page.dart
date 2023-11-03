import 'package:flutter/material.dart';
import 'package:pet_club/gen/assets.gen.dart';
import 'package:pet_club/common/services/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pet_club/pages/splash/widgets/widgets.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    services.get<SystemService>().enterSystemUIFullScreen();
    super.initState();
  }

  @override
  void dispose() {
    services.get<SystemService>().exitSystemUIFullScreen();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375.w,
      height: 812.h,
      color: Colors.white,
      child: Stack(
        children: [
          Positioned.fill(
            child: Assets.images.common.splashBackground.image(
              fit: BoxFit.fitWidth,
              alignment: Alignment.bottomCenter,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 50.h,
            child: Assets.images.common.splashLogo.image(),
          ),
          Positioned(top: 30.h, right: 16.w, child: SplashSkip(duration: 3)),
        ],
      ),
    );
  }
}
