import 'package:go_router/go_router.dart';

import 'home/screen/home_screen.dart';
import 'splash/screen/splash_screen.dart';

final appRoutes = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (_, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (_, state) => const HomeScreen(),
    ),
  ],
);
