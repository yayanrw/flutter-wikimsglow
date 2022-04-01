import 'package:flutter/material.dart';
import 'package:wikimsglow/features/home/domain/entities/product.dart';
import 'package:wikimsglow/features/home/presentation/pages/home_page.dart';
import 'package:wikimsglow/features/home/presentation/pages/product_detail_page.dart';
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

      case HomePage.routeName:
        return MaterialPageRoute(builder: (_) => const HomePage());

      case ProductDetailPage.routeName:
        return MaterialPageRoute(
            builder: (_) =>
                ProductDetailPage(product: settings.arguments as Product));

      case UnderDevelopment.routeName:
        return MaterialPageRoute(builder: (_) => const UnderDevelopment());

      case NotFound.routeName:
        return MaterialPageRoute(builder: (_) => const NotFound());

      default:
        return MaterialPageRoute(builder: (_) => const NotFound());
    }
  }
}
