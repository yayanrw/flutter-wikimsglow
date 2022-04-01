import 'package:flutter/material.dart';
import 'package:wikimsglow/features/others/presentation/pages/not_found.dart';

class FavouriteNavigationRoutes {
  static final FavouriteNavigationRoutes _instance =
      FavouriteNavigationRoutes._init();
  static FavouriteNavigationRoutes get instance => _instance;

  FavouriteNavigationRoutes._init();

  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      default:
        return MaterialPageRoute(builder: (_) => const NotFound());
    }
  }
}
