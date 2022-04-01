import 'package:flutter/material.dart';
import 'package:wikimsglow/core/widgets/menu/my_bottom_navbar.dart';
import 'package:wikimsglow/features/login/presentation/pages/login_page.dart';
import 'package:wikimsglow/features/others/presentation/pages/not_found.dart';
import 'package:wikimsglow/features/others/presentation/pages/under_development.dart';

class GlobalNavigationRoutes {
  static final GlobalNavigationRoutes _instance =
      GlobalNavigationRoutes._init();
  static GlobalNavigationRoutes get instance => _instance;

  GlobalNavigationRoutes._init();

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginPage.routeName:
        return MaterialPageRoute(builder: (_) => const LoginPage());

      case MyBottomNavbar.routeName:
        return MaterialPageRoute(builder: (_) => const MyBottomNavbar());

      case UnderDevelopment.routeName:
        return MaterialPageRoute(builder: (_) => const UnderDevelopment());

      default:
        return MaterialPageRoute(builder: (_) => const NotFound());
    }
  }
}
