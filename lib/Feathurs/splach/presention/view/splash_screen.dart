import 'package:flutter/material.dart';
import 'package:rawee/Core/database/cache/cache_helper.dart';
import 'package:rawee/Core/routes/custem_navigation_router.dart';
import 'package:rawee/Core/services/service_locator_get_it.dart';
import 'package:rawee/Core/utils/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    bool isFirstTime = getIt<CacheHelper>().getData(
          key: 'isFirstTime',
        ) ??
        false;
    if (isFirstTime == true) {
      dalayedNavigator(context, 'SignUpView');
    } else {
      dalayedNavigator(context, 'onBording');
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.5,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(1000),
            image: DecorationImage(
              image: const AssetImage(Assets.assetsImagesSplachLogo),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

void dalayedNavigator(context, String path) {
  Future.delayed(const Duration(seconds: 2), () {
    custemNavigationRouterReplacement(context, path);
  });
}
