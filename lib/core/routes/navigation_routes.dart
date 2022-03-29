import 'package:flutter/material.dart';
import 'package:wikimsglow/features/login/presentation/pages/login_page.dart';

class NavigationRoutes {
  static final NavigationRoutes _instance = NavigationRoutes._init();
  static NavigationRoutes get instance => _instance;

  NavigationRoutes._init();

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginPage.routeName:
        return MaterialPageRoute(builder: (_) => const LoginPage());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('Page not found :('),
            ),
          );
        });
    }
  }

  MaterialPageRoute normalNavigate(Widget widget, String pageName) {
    return MaterialPageRoute(
        builder: (context) => widget, settings: RouteSettings(name: pageName));
  }
}
