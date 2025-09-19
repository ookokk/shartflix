import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/core/router/app_router.gr.dart';
import 'package:shartflix/feature/movie/app/view_model/profile_view_model.dart';
import 'package:shartflix/feature/movie/view/profile/widget/favorite_movies.dart';
import 'package:shartflix/feature/movie/view/profile/widget/profile_app_bar.dart';
import 'package:shartflix/feature/movie/view/profile/widget/profile_card.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/widget/dialog/try_again_error.dart';
import 'package:shartflix/product/widget/responsive/red_black_gradient_background.dart';

@RoutePage()
class ProfileView extends ConsumerStatefulWidget {
  const ProfileView({super.key});

  @override
  ConsumerState<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<ProfileView> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileProvider);
    if (state.isError) {
      return const TryAgainError();
    }
    if (state.isLoading && state.currentUser == null) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    return Scaffold(
      appBar: const ProfileAppBar(),
      body: RedBlackGradientBackground(
        child: Padding(
          padding: AppPaddings.mediumHorizontal,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: CustomAppSizes.medium,
            children: [
              ProfileCard(userModel: state.currentUser!),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    LocaleKeys.favorite_movies.tr(),
                    style: context.textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                      color: context.colorScheme.errorContainer,
                    ),
                  ),
                  IconButton(
                    onPressed: () =>
                        context.router.push(const SettingsRoute()),
                    icon: Icon(
                      Icons.settings,
                      color: context.colorScheme.errorContainer,
                    ),
                  ),
                ],
              ),
              FavoriteMovies(
                movies: state.favoritesList?.data ?? [],
                onRefresh: () async =>
                    ref.read(profileProvider.notifier).fetchInitial(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
