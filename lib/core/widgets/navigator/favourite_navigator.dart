import 'package:flutter/material.dart';
import 'package:wikimsglow/core/routes/favourite_navigation_routes.dart';

class FavouriteNavigator extends StatelessWidget {
  const FavouriteNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: FavouriteNavigationRoutes.instance.onGenerateRoute,
    );
  }
}
