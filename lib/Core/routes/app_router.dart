import 'package:go_router/go_router.dart';
import 'package:rawee/Feathurs/onBording/presentaion/view/on_bording_screen.dart';
import 'package:rawee/Feathurs/splach/presention/view/splash_screen.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: '/OnBording',
    builder: (context, state) => const OnBording(),
  ),
]);
