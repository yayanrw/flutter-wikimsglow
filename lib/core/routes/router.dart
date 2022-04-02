import 'package:auto_route/auto_route.dart';
import 'package:wikimsglow/features/category/presentation/pages/category_page.dart';
import 'package:wikimsglow/features/favourite/presentation/pages/favourite_page.dart';
import 'package:wikimsglow/features/home/presentation/pages/home_page.dart';
import 'package:wikimsglow/features/home/presentation/pages/product_detail_page.dart';
import 'package:wikimsglow/features/login/presentation/pages/login_page.dart';
import 'package:wikimsglow/features/others/presentation/pages/my_layout.dart';
import 'package:wikimsglow/features/others/presentation/pages/not_found_page.dart';
import 'package:wikimsglow/features/others/presentation/pages/under_development_page.dart';
import 'package:wikimsglow/features/profile/presentation/pages/profile_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      path: '/',
      page: LoginPage,
    ),
    AutoRoute(
      path: '/under-development',
      page: UnderDevelopmentPage,
    ),
    AutoRoute(
      path: '/not-found',
      page: NotFoundPage,
    ),
    AutoRoute(path: '/my-layout', page: MyLayoutPage, children: [
      AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [
            AutoRoute(path: '', page: HomePage),
            AutoRoute(path: 'product/:product', page: ProductDetailPage)
          ]),
      AutoRoute(
          path: 'category',
          name: 'CategoryRouter',
          page: EmptyRouterPage,
          children: [AutoRoute(path: '', page: CategoryPage)]),
      AutoRoute(
          path: 'home',
          name: 'FavouriteRouter',
          page: EmptyRouterPage,
          children: [AutoRoute(path: '', page: FavouritePage)]),
      AutoRoute(
          path: 'home',
          name: 'ProfileRouter',
          page: EmptyRouterPage,
          children: [AutoRoute(path: '', page: ProfilePage)])
    ]),
  ],
)
class $AppRouter {}
