import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/theme/themes.dart';
import 'package:wikimsglow/core/widgets/menu/my_bottom_navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: AppsConfig.appTitle,
        theme: themes(),
        home: const MyBottomNavbar());
  }
}
