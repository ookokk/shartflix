import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/feature/explore/controller/explore_view_model.dart';
import 'package:shartflix/feature/explore/widget/information_tile.dart';
import 'package:shartflix/generated/assets.dart';

class InformationBar extends ConsumerWidget {
  const InformationBar({required this.index, super.key});
  final int index;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final movie = ref.watch(exploreProvider).movies[index];
    return Stack(
      children: [
        IgnorePointer(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.decal,
                colors: [Color.fromRGBO(0, 0, 0, 0.8), Colors.transparent],
                stops: [0, .4],
              ),
            ),
          ),
        ),
        Padding(
          padding: AppPaddings.large,
          child: Column(
            spacing: CustomAppSizes.large,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton.outlined(
                onPressed: () => ref
                    .read(exploreProvider.notifier)
                    .likeMovie(movie, ref),
                icon: Image.asset(
                  movie.isFavorite ?? false
                      ? Assets.imageRedHeart
                      : Assets.imageHeart,
                  height: 25,
                ),
                style: IconButton.styleFrom(
                  side: const BorderSide(color: Colors.grey),
                  padding: const EdgeInsets.symmetric(
                    vertical: CustomAppSizes.large,
                    horizontal: CustomAppSizes.medium,
                  ),
                ),
              ),
              InformationTile(title: movie.Title, description: movie.Plot),
            ],
          ),
        ),
      ],
    );
  }
}
