import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'navigation_menu.dart';
import 'utils/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.system,
      theme: TthemeData.lightTheme,
      darkTheme: TthemeData.darkTheme,
      home: const NavigationMenu(),
    );
  }
}
