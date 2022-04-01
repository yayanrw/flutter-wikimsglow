import 'package:flutter/material.dart';
import 'package:wikimsglow/features/others/presentation/pages/not_found.dart';

class ProfileNavigationRoutes {
  static final ProfileNavigationRoutes _instance =
      ProfileNavigationRoutes._init();
  static ProfileNavigationRoutes get instance => _instance;

  ProfileNavigationRoutes._init();

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return MaterialPageRoute(builder: (_) => const NotFound());
    }
  }
}
