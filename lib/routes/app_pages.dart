import 'package:go_router/go_router.dart';
import 'package:pet_club/modules/cart/cart.dart';
import 'package:pet_club/modules/auth/auth_view.dart';
import 'package:pet_club/pages/splash/splash_page.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = GoRouter(initialLocation: AppRoutes.SPLASH, routes: [
    GoRoute(
      path: AppRoutes.SPLASH,
      builder: (context, state) => SplashPage(),
    ),
    GoRoute(
      path: AppRoutes.LOGIN,
      builder: (context, state) => AuthView(),
    ),
    GoRoute(
      path: AppRoutes.CART,
      builder: (context, state) => CartView(),
    ),
  ]);
}
