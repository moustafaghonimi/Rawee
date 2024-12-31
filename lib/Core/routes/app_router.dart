import 'package:go_router/go_router.dart';
import 'package:rawee/Feathurs/auth/presention/view/sign_up/sign_up_view.dart';
import 'package:rawee/Feathurs/onBording/presentaion/view/on_bording_screen.dart';
import 'package:rawee/Feathurs/splach/presention/view/splash_screen.dart';

import '../../Feathurs/auth/presention/view/sign_in/sign_in.dart';

final GoRouter router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (context, state) => const SplashScreen(),
  ),
  GoRoute(
    path: '/OnBording',
    builder: (context, state) => OnBording(),
  ),
  GoRoute(
    path: '/SignIn',
    builder: (context, state) => const SignIn(),
  ),
  GoRoute(
    path: '/SignUpView',
    builder: (context, state) => const SignUpView(),
  ),
]);
