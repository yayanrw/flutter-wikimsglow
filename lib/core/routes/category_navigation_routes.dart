import 'package:flutter/material.dart';
import 'package:wikimsglow/features/others/presentation/pages/not_found.dart';
import 'package:wikimsglow/features/others/presentation/pages/under_development.dart';

class CategoryNavigationRoutes {
  static final CategoryNavigationRoutes _instance =
      CategoryNavigationRoutes._init();
  static CategoryNavigationRoutes get instance => _instance;

  CategoryNavigationRoutes._init();

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case UnderDevelopment.routeName:
        return MaterialPageRoute(builder: (_) => const UnderDevelopment());

      default:
        return MaterialPageRoute(builder: (_) => const NotFound());
    }
  }
}
