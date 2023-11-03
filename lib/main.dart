import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:logger/logger.dart';

import 'package:pet_club/gen/fonts.gen.dart';
import 'package:pet_club/routes/routes.dart';
import 'package:pet_club/common/values/colors.dart';
import 'package:pet_club/common/services/services.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await setupServices();

  await services.get<SystemService>().setSystemUIStyle();

  runApp(const PetClubApp());

  FlutterNativeSplash.remove();
}

class PetClubApp extends StatefulWidget {
  const PetClubApp({super.key});

  @override
  State<StatefulWidget> createState() => PetClubAppState();
}

class PetClubAppState extends State<PetClubApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    services.get<Logger>().d('build MaterialApp');
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) {
        return MaterialApp.router(
          routerConfig: AppPages.routes,
          theme: ThemeData(
            // This is the theme of your application.
            useMaterial3: true,
            fontFamily: FontFamily.robotoMono,
            colorScheme: ColorScheme.fromSeed(
              primary: ColorConstants.primary,
              seedColor: ColorConstants.primary,
              surfaceTint: Colors.transparent,
            ),
            buttonTheme: ButtonThemeData(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            bottomNavigationBarTheme: BottomNavigationBarThemeData(
              type: BottomNavigationBarType.fixed,
              selectedIconTheme: IconThemeData(size: 30.0),
              unselectedIconTheme: IconThemeData(size: 30.0),
              backgroundColor: ColorConstants.primary,
              selectedItemColor: ColorConstants.white,
              unselectedItemColor: ColorConstants.white,
            ),
          ),
          builder: EasyLoading.init(),
        );
      },
    );
  }
}
