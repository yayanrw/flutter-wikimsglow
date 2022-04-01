import 'package:flutter/material.dart';
import 'package:wikimsglow/core/routes/profile_navigation_routes.dart';

class ProfileNavigator extends StatelessWidget {
  const ProfileNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: ProfileNavigationRoutes.instance.onGenerateRoute,
    );
  }
}
