// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:shartflix/feature/auth/view/login/login_view.dart' as _i2;
import 'package:shartflix/feature/auth/view/register/register_view.dart' as _i7;
import 'package:shartflix/feature/auth/view/splash/splash_view.dart' as _i8;
import 'package:shartflix/feature/explore/explore_view.dart' as _i1;
import 'package:shartflix/feature/main_view.dart' as _i3;
import 'package:shartflix/feature/photo_upload/photo_upload_view.dart' as _i5;
import 'package:shartflix/feature/profile/profile_view.dart' as _i6;
import 'package:shartflix/product/widget/responsive/no_connection_view.dart'
    as _i4;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    ExploreRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ExploreView(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.LoginView(),
      );
    },
    MainRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainView(),
      );
    },
    NoConnectionRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.NoConnectionView(),
      );
    },
    PhotoUploadRoute.name: (routeData) {
      final args = routeData.argsAs<PhotoUploadRouteArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.PhotoUploadView(
          isNewRegistered: args.isNewRegistered,
          key: args.key,
        ),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ProfileView(),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RegisterView(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashView(),
      );
    },
  };
}

/// generated route for
/// [_i1.ExploreView]
class ExploreRoute extends _i9.PageRouteInfo<void> {
  const ExploreRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ExploreRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExploreRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.LoginView]
class LoginRoute extends _i9.PageRouteInfo<void> {
  const LoginRoute({List<_i9.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainView]
class MainRoute extends _i9.PageRouteInfo<void> {
  const MainRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.NoConnectionView]
class NoConnectionRoute extends _i9.PageRouteInfo<void> {
  const NoConnectionRoute({List<_i9.PageRouteInfo>? children})
      : super(
          NoConnectionRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoConnectionRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.PhotoUploadView]
class PhotoUploadRoute extends _i9.PageRouteInfo<PhotoUploadRouteArgs> {
  PhotoUploadRoute({
    required bool isNewRegistered,
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          PhotoUploadRoute.name,
          args: PhotoUploadRouteArgs(
            isNewRegistered: isNewRegistered,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'PhotoUploadRoute';

  static const _i9.PageInfo<PhotoUploadRouteArgs> page =
      _i9.PageInfo<PhotoUploadRouteArgs>(name);
}

class PhotoUploadRouteArgs {
  const PhotoUploadRouteArgs({
    required this.isNewRegistered,
    this.key,
  });

  final bool isNewRegistered;

  final _i10.Key? key;

  @override
  String toString() {
    return 'PhotoUploadRouteArgs{isNewRegistered: $isNewRegistered, key: $key}';
  }
}

/// generated route for
/// [_i6.ProfileView]
class ProfileRoute extends _i9.PageRouteInfo<void> {
  const ProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RegisterView]
class RegisterRoute extends _i9.PageRouteInfo<void> {
  const RegisterRoute({List<_i9.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SplashView]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
