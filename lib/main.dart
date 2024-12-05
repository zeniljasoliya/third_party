import 'package:flutter/material.dart';
import 'package:third_party/permission_handlerdemo.dart';
// import 'package:third_party/flutter_local_notificationsdemo.dart';

import 'package:third_party/shared_demo/counter_shared.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); //for use native side
  CounterShared.init;
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,

      // theme: FlexThemeData.light(scheme: FlexScheme.mandyRed),
      // The Mandy red, dark theme.
      // darkTheme: FlexThemeData.dark(scheme: FlexScheme.mandyRed),
      // // Use dark or light theme based on system setting.
      themeMode: ThemeMode.system,
      home: PermissionHandelerDemo(),
    );
  }
}

class FlexScheme {}
