import 'package:get/get.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:pet_club/gen/fonts.gen.dart';
import 'package:pet_club/routes/routes.dart';
import 'package:pet_club/common/constants/colors.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Colors.transparent),
  );

  runApp(const App());

  FlutterNativeSplash.remove();
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      enableLog: true,
      getPages: AppPages.routes,
      initialRoute: AppPages.INITIAL,
      defaultTransition: Transition.fade,
      theme: ThemeData(
        // This is the theme of your application.
        fontFamily: FontFamily.fredokaOne,
        colorScheme: ColorScheme.fromSeed(
          seedColor: ColorConstants.primary,
          primary: ColorConstants.primary,
        ),
        useMaterial3: true,
      ),
    );
  }
}
