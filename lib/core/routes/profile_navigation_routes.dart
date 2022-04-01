import 'package:flutter/material.dart';
import 'package:wikimsglow/features/others/presentation/pages/not_found.dart';
import 'package:wikimsglow/features/others/presentation/pages/under_development.dart';

class ProfileNavigationRoutes {
  static final ProfileNavigationRoutes _instance =
      ProfileNavigationRoutes._init();
  static ProfileNavigationRoutes get instance => _instance;

  ProfileNavigationRoutes._init();

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case UnderDevelopment.routeName:
        return MaterialPageRoute(builder: (_) => const UnderDevelopment());

      default:
        return MaterialPageRoute(builder: (_) => const NotFound());
    }
  }
}
