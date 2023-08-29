import 'dart:ui';

import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'package:pet_club/utils/logger.dart';
import 'package:pet_club/gen/fonts.gen.dart';
import 'package:pet_club/routes/routes.dart';
import 'package:pet_club/common/values/colors.dart';
import 'package:pet_club/common/services/services.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  await SystemService.setSystemUIStyle();

  await Get.putAsync<StorageService>(() => StorageService().init());

  runApp(const PetClubApp());

  FlutterNativeSplash.remove();
}

class PetClubApp extends StatefulWidget {
  const PetClubApp({super.key});

  @override
  State<StatefulWidget> createState() => PetClubAppState();
}

class PetClubAppState extends State<PetClubApp> {
  late final AppLifecycleListener _listener;

  @override
  void initState() {
    super.initState();
    _listener = AppLifecycleListener(
      onExitRequested: _handleExitRequest,
    );
  }

  @override
  void dispose() {
    _listener.dispose();
    super.dispose();
  }

  Future<AppExitResponse> _handleExitRequest() async {
    logger.d('请求退出');
    return AppExitResponse.exit;
  }

  @override
  Widget build(BuildContext context) {
    logger.d('build GetMaterialApp');
    return ScreenUtilInit(
      designSize: Size(375, 812),
      builder: (context, child) {
        return GetMaterialApp(
          enableLog: true,
          getPages: AppPages.routes,
          initialRoute: AppPages.INITIAL,
          defaultTransition: Transition.fadeIn,
          theme: ThemeData(
            // This is the theme of your application.
            fontFamily: FontFamily.avenir,
            fontFamilyFallback: const [FontFamily.montserrat],
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
            useMaterial3: true,
          ),
          builder: EasyLoading.init(),
        );
      },
    );
  }
}
