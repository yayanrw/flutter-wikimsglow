import 'package:flutter/material.dart';
import 'package:wikimsglow/features/home/domain/entities/product.dart';
import 'package:wikimsglow/features/home/presentation/pages/home_page.dart';
import 'package:wikimsglow/features/home/presentation/pages/product_detail_page.dart';
import 'package:wikimsglow/features/others/presentation/pages/not_found.dart';
import 'package:wikimsglow/features/others/presentation/pages/under_development.dart';

class HomeNavigationRoutes {
  HomeNavigationRoutes(BuildContext? context);

  Route<dynamic> onGenerateRoute(RouteSettings? settings) {
    switch (settings!.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomePage());

      case ProductDetailPage.routeName:
        return MaterialPageRoute(
            builder: (context) =>
                ProductDetailPage(product: settings.arguments as Product));

      case UnderDevelopment.routeName:
        return MaterialPageRoute(
            builder: (context) => const UnderDevelopment());

      default:
        return MaterialPageRoute(builder: (context) => const NotFound());
    }
  }
}
