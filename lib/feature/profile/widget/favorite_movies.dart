import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/feature/profile/widget/profile_image_title_card.dart';
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
                    color: Colors.white,
                  ),
                ),
              )
            : GridView.builder(
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: CustomAppSizes.large,
                      mainAxisSpacing: CustomAppSizes.large,
                      childAspectRatio: 3 / 5.5,
                    ),
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  final movie = movies[index];
                  return ProfileImageTitleCard(
                    title: movie!.Title ?? '',
                    subtitle: movie.Genre,
                    imageUrl: movie.Poster ?? '',
                  );
                },
              ),
      ),
    );
  }
}
