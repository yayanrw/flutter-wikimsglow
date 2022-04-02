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
import 'package:flutter/material.dart' as _i10;

import '../../features/category/presentation/pages/category_page.dart' as _i7;
import '../../features/favourite/presentation/pages/favourite_page.dart' as _i8;
import '../../features/home/presentation/pages/home_page.dart' as _i6;
import '../../features/login/presentation/pages/login_page.dart' as _i1;
import '../../features/others/presentation/pages/my_layout.dart' as _i4;
import '../../features/others/presentation/pages/not_found.dart' as _i3;
import '../../features/others/presentation/pages/under_development.dart' as _i2;
import '../../features/profile/presentation/pages/profile_page.dart' as _i9;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.LoginPage());
    },
    UnderDevelopment.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.UnderDevelopment());
    },
    NotFound.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.NotFound());
    },
    MyLayout.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.MyLayout());
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
    CategoryRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.CategoryPage());
    },
    FavouriteRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.FavouritePage());
    },
    ProfileRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.ProfilePage());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(LoginRoute.name, path: '/'),
        _i5.RouteConfig(UnderDevelopment.name, path: '/under-development'),
        _i5.RouteConfig(NotFound.name, path: '/not-found'),
        _i5.RouteConfig(MyLayout.name, path: '/my-layout', children: [
          _i5.RouteConfig(HomeRouter.name,
              path: 'home',
              parent: MyLayout.name,
              children: [
                _i5.RouteConfig(HomeRoute.name,
                    path: '', parent: HomeRouter.name)
              ]),
          _i5.RouteConfig(CategoryRouter.name,
              path: 'category',
              parent: MyLayout.name,
              children: [
                _i5.RouteConfig(CategoryRoute.name,
                    path: '', parent: CategoryRouter.name)
              ]),
          _i5.RouteConfig(FavouriteRouter.name,
              path: 'home',
              parent: MyLayout.name,
              children: [
                _i5.RouteConfig(FavouriteRoute.name,
                    path: '', parent: FavouriteRouter.name)
              ]),
          _i5.RouteConfig(ProfileRouter.name,
              path: 'home',
              parent: MyLayout.name,
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
/// [_i2.UnderDevelopment]
class UnderDevelopment extends _i5.PageRouteInfo<void> {
  const UnderDevelopment()
      : super(UnderDevelopment.name, path: '/under-development');

  static const String name = 'UnderDevelopment';
}

/// generated route for
/// [_i3.NotFound]
class NotFound extends _i5.PageRouteInfo<void> {
  const NotFound() : super(NotFound.name, path: '/not-found');

  static const String name = 'NotFound';
}

/// generated route for
/// [_i4.MyLayout]
class MyLayout extends _i5.PageRouteInfo<void> {
  const MyLayout({List<_i5.PageRouteInfo>? children})
      : super(MyLayout.name, path: '/my-layout', initialChildren: children);

  static const String name = 'MyLayout';
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
/// [_i7.CategoryPage]
class CategoryRoute extends _i5.PageRouteInfo<void> {
  const CategoryRoute() : super(CategoryRoute.name, path: '');

  static const String name = 'CategoryRoute';
}

/// generated route for
/// [_i8.FavouritePage]
class FavouriteRoute extends _i5.PageRouteInfo<void> {
  const FavouriteRoute() : super(FavouriteRoute.name, path: '');

  static const String name = 'FavouriteRoute';
}

/// generated route for
/// [_i9.ProfilePage]
class ProfileRoute extends _i5.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}
