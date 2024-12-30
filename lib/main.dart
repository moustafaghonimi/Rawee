import 'package:flutter/material.dart';
import 'package:rawee/Core/utils/app_color.dart';

import 'Core/routes/app_router.dart';

void main() {
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
