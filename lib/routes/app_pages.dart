import 'package:get/get.dart';
import 'package:pet_club/modules/auth/auth.dart';
import 'package:pet_club/modules/auth/auth_view.dart';
import 'package:pet_club/modules/cart/cart.dart';
import 'package:pet_club/modules/splash/splash.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = AppRoutes.SPLASH;

  static final routes = [
    GetPage(
      name: AppRoutes.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: AppRoutes.LOGIN,
      page: () => AuthView(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: AppRoutes.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
  ];
}
