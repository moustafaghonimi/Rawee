import 'package:flutter/material.dart';
import 'package:rawee/Core/database/cache/cache_helper.dart';
import 'package:rawee/Core/services/service_locator_get_it.dart';
import 'package:rawee/Core/utils/app_color.dart';

import 'Core/routes/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  await getIt<CacheHelper>().init();
  await Future.delayed(Duration(seconds: 1));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.backgroundColor,
      ),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
      title: 'Rawee',
    );
  }
}
