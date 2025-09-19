import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/feature/movie/view/profile/widget/profile_image_title_card.dart';
import 'package:shartflix/generated/locale_keys.g.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

class FavoriteMovies extends StatelessWidget {
  const FavoriteMovies({
    required this.movies,
    required this.onRefresh,
    super.key,
  });

  final List<MovieModel?> movies;
  final Future<void> Function() onRefresh;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: onRefresh,
        child: movies.isEmpty
            ? Center(
                child: Text(
                  LocaleKeys.there_is_no_film_yet.tr(),
                  style: context.textTheme.labelLarge?.copyWith(
                    color: context.colorScheme.errorContainer,
                  ),
                ),
              )
            : GridView.builder(
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.65,
                    ),
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  final movie = movies[index];
                  return ProfileImageTitleCard(movie: movie!);
                },
              ),
      ),
    );
  }
}
