import 'package:flutter/material.dart';
import 'package:rawee/Core/routes/custem_navigation_router.dart';
import 'package:rawee/Core/utils/app_assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    dalayedNavigator(context);
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

void dalayedNavigator(context) {
  Future.delayed(const Duration(seconds: 2), () {
    custemNavigationRouterReplacement(context, 'OnBording');
  });
}
