import 'package:flutter/material.dart';
import 'package:wikimsglow/core/routes/home_navigation_routes.dart';

class HomeNavigator extends StatelessWidget {
  const HomeNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: HomeNavigationRoutes.instance.onGenerateRoute,
    );
  }
}
