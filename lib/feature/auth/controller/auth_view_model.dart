import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/init/cache_manager.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/feature/explore/controller/explore_view_model.dart';

class AuthViewModel {
  Future<void> signOut(BuildContext context, WidgetRef ref) async {
    ref.read(exploreProvider.notifier).cleanState();
    await CacheManager.instance.clearToken();
    await context.router.pushAndPopUntil(
      const LoginRoute(),
      predicate: (_) => false,
    );
  }
}
