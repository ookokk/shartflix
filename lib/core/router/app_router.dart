import 'package:auto_route/auto_route.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/core/router/guard/connection_guard.dart';

@AutoRouterConfig(replaceInRouteName: 'View,Route')
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  final List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(
      page: MainRoute.page,
      guards: [ConnectionGuard()],
      children: [
        AutoRoute(page: ExploreRoute.page, initial: true),
        AutoRoute(page: ProfileRoute.page),
      ],
    ),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: RegisterRoute.page),
    AutoRoute(page: PhotoUploadRoute.page),
  ];
}
