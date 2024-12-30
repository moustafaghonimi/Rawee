import 'package:go_router/go_router.dart';
import 'package:rawee/Feathurs/splach/presention/view/splash_screen.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashScreen(),
  )
]);
