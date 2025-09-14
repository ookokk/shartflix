import 'package:auto_route/auto_route.dart';
import 'package:shartflix/core/init/cache_manager.dart';
import 'package:shartflix/core/router/app_router.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
    NavigationResolver resolver,
    StackRouter router,
  ) async {
    final jwtToken = await CacheManager.instance.getToken();
    if (jwtToken != null) {
      resolver.next();
    } else {
      await resolver.redirect(const LoginRoute());
    }
  }
}
