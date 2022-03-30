import 'package:flutter/material.dart';
import 'package:wikimsglow/core/config/apps_config.dart';
import 'package:wikimsglow/core/routes/navigation_routes.dart';
import 'package:wikimsglow/core/routes/route_observer.dart';
import 'package:wikimsglow/core/theme/themes.dart';
import 'package:wikimsglow/features/login/presentation/pages/login_page.dart';

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
        home: const LoginPage(),
        navigatorObservers: [routeObserver],
        onGenerateRoute: NavigationRoutes.instance.onGenerateRoute);
  }
}
