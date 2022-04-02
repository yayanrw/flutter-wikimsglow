import 'package:auto_route/auto_route.dart';
import 'package:wikimsglow/features/category/presentation/pages/category_page.dart';
import 'package:wikimsglow/features/favourite/presentation/pages/favourite_page.dart';
import 'package:wikimsglow/features/home/presentation/pages/home_page.dart';
import 'package:wikimsglow/features/login/presentation/pages/login_page.dart';
import 'package:wikimsglow/features/others/presentation/pages/my_layout.dart';
import 'package:wikimsglow/features/others/presentation/pages/not_found.dart';
import 'package:wikimsglow/features/others/presentation/pages/under_development.dart';
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
      page: UnderDevelopment,
    ),
    AutoRoute(
      path: '/not-found',
      page: NotFound,
    ),
    AutoRoute(path: '/my-layout', page: MyLayout, children: [
      AutoRoute(
          path: 'home',
          name: 'HomeRouter',
          page: EmptyRouterPage,
          children: [AutoRoute(path: '', page: HomePage)]),
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
