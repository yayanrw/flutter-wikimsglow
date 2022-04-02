// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i11;

import '../../features/category/presentation/pages/category_page.dart' as _i8;
import '../../features/favourite/presentation/pages/favourite_page.dart' as _i9;
import '../../features/home/domain/entities/product.dart' as _i12;
import '../../features/home/presentation/pages/home_page.dart' as _i6;
import '../../features/home/presentation/pages/product_detail_page.dart' as _i7;
import '../../features/login/presentation/pages/login_page.dart' as _i1;
import '../../features/others/presentation/pages/my_layout_page.dart' as _i4;
import '../../features/others/presentation/pages/not_found_page.dart' as _i3;
import '../../features/others/presentation/pages/under_development_page.dart'
    as _i2;
import '../../features/profile/presentation/pages/profile_page.dart' as _i10;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    UnderDevelopmentRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.UnderDevelopmentPage());
    },
    NotFoundRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.NotFoundPage());
    },
    MyLayoutRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.MyLayoutPage());
    },
    HomeRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    CategoryRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    FavouriteRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.HomePage());
    },
    ProductDetailRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i7.ProductDetailPage(key: args.key, product: args.product));
    },
    CategoryRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.CategoryPage());
    },
    FavouriteRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.FavouritePage());
    },
    ProfileRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.ProfilePage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(LoginRoute.name, path: '/'),
        _i5.RouteConfig(UnderDevelopmentRoute.name, path: '/under-development'),
        _i5.RouteConfig(NotFoundRoute.name, path: '/not-found'),
        _i5.RouteConfig(MyLayoutRoute.name, path: '/my-layout', children: [
          _i5.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: MyLayoutRoute.name,
              children: [
                _i5.RouteConfig(HomeRoute.name,
                    path: '', parent: HomeRouter.name),
                _i5.RouteConfig(ProductDetailRoute.name,
                    path: 'product/:product', parent: HomeRouter.name)
              ]),
          _i5.RouteConfig(CategoryRouter.name,
              path: 'category',
              parent: MyLayoutRoute.name,
              children: [
                _i5.RouteConfig(CategoryRoute.name,
                    path: '', parent: CategoryRouter.name)
              ]),
          _i5.RouteConfig(FavouriteRouter.name,
              path: 'home',
              parent: MyLayoutRoute.name,
              children: [
                _i5.RouteConfig(FavouriteRoute.name,
                    path: '', parent: FavouriteRouter.name)
              ]),
          _i5.RouteConfig(ProfileRouter.name,
              path: 'home',
              parent: MyLayoutRoute.name,
              children: [
                _i5.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i2.UnderDevelopmentPage]
class UnderDevelopmentRoute extends _i5.PageRouteInfo<void> {
  const UnderDevelopmentRoute()
      : super(UnderDevelopmentRoute.name, path: '/under-development');

  static const String name = 'UnderDevelopmentRoute';
}

/// generated route for
/// [_i3.NotFoundPage]
class NotFoundRoute extends _i5.PageRouteInfo<void> {
  const NotFoundRoute() : super(NotFoundRoute.name, path: '/not-found');

  static const String name = 'NotFoundRoute';
}

/// generated route for
/// [_i4.MyLayoutPage]
class MyLayoutRoute extends _i5.PageRouteInfo<void> {
  const MyLayoutRoute({List<_i5.PageRouteInfo>? children})
      : super(MyLayoutRoute.name,
            path: '/my-layout', initialChildren: children);

  static const String name = 'MyLayoutRoute';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class HomeRouter extends _i5.PageRouteInfo<void> {
  const HomeRouter({List<_i5.PageRouteInfo>? children})
      : super(HomeRouter.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class CategoryRouter extends _i5.PageRouteInfo<void> {
  const CategoryRouter({List<_i5.PageRouteInfo>? children})
      : super(CategoryRouter.name, path: 'category', initialChildren: children);

  static const String name = 'CategoryRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class FavouriteRouter extends _i5.PageRouteInfo<void> {
  const FavouriteRouter({List<_i5.PageRouteInfo>? children})
      : super(FavouriteRouter.name, path: 'home', initialChildren: children);

  static const String name = 'FavouriteRouter';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class ProfileRouter extends _i5.PageRouteInfo<void> {
  const ProfileRouter({List<_i5.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'home', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i7.ProductDetailPage]
class ProductDetailRoute extends _i5.PageRouteInfo<ProductDetailRouteArgs> {
  ProductDetailRoute({_i11.Key? key, required _i12.Product product})
      : super(ProductDetailRoute.name,
            path: 'product/:product',
            args: ProductDetailRouteArgs(key: key, product: product));

  static const String name = 'ProductDetailRoute';
}

class ProductDetailRouteArgs {
  const ProductDetailRouteArgs({this.key, required this.product});

  final _i11.Key? key;

  final _i12.Product product;

  @override
  String toString() {
    return 'ProductDetailRouteArgs{key: $key, product: $product}';
  }
}

/// generated route for
/// [_i8.CategoryPage]
class CategoryRoute extends _i5.PageRouteInfo<void> {
  const CategoryRoute() : super(CategoryRoute.name, path: '');

  static const String name = 'CategoryRoute';
}

/// generated route for
/// [_i9.FavouritePage]
class FavouriteRoute extends _i5.PageRouteInfo<void> {
  const FavouriteRoute() : super(FavouriteRoute.name, path: '');

  static const String name = 'FavouriteRoute';
}

/// generated route for
/// [_i10.ProfilePage]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}
