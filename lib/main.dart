import 'package:flutter/material.dart';
import 'package:rawee/Core/utils/app_assets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Rawee',
        home: Scaffold(
          appBar: AppBar(
            title: Text("Rawee"),
          ),
          body: Center(child: Image.asset(Assets.assetsImagesSplachLogo)),
        ));
  }
}
