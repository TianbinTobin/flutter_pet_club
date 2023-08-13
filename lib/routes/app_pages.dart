import 'package:get/get.dart';
import 'package:pet_club/modules/auth/auth.dart';
import 'package:pet_club/modules/splash/splash.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: AuthBinding(),
    ),
  ];
}
