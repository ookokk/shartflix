import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/feature/explore/controller/explore_view_model.dart';
import 'package:shartflix/feature/explore/widget/information_bar.dart';
import 'package:shartflix/feature/profile/widget/screen_size_image.dart';
import 'package:shartflix/product/widget/dialog/try_again_error.dart';

@RoutePage()
class ExploreView extends ConsumerWidget {
  const ExploreView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(exploreProvider);
    if (state.isError) {
      return TryAgainError(
        onTap: () => ref.read(exploreProvider.notifier).fetchMovies(),
      );
    }
    if (state.isLoading && state.movies.isEmpty) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: state.movies.length,
            itemBuilder: (context, index) {
              return ScreenSizeImage(imageUrl: state.movies[index].Poster);
            },
            onPageChanged: (value) {
              ref.read(exploreProvider.notifier).setCurrentIndex(value);

              if (value >= state.movies.length - 2 &&
                  !state.isLoading &&
                  state.currentPage < state.maxPage) {
                final nextPage = state.currentPage + 1;
                ref
                    .read(exploreProvider.notifier)
                    .fetchMovies(page: nextPage);
              }
            },
          ),
          if (state.movies.isNotEmpty)
            InformationBar(index: state.currentIndex),
          if (state.isLoading && state.movies.isNotEmpty)
            const Positioned(
              bottom: 100,
              left: 0,
              right: 0,
              child: Center(child: CircularProgressIndicator.adaptive()),
            ),
        ],
      ),
    );
  }
}
