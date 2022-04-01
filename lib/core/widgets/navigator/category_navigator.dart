import 'package:flutter/material.dart';
import 'package:wikimsglow/core/routes/category_navigation_routes.dart';

class CategoryNavigator extends StatelessWidget {
  const CategoryNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: CategoryNavigationRoutes.instance.onGenerateRoute,
    );
  }
}
