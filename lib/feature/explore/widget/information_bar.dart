import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/feature/explore/widget/favorite_button.dart';
import 'package:shartflix/feature/explore/widget/information_tile.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

class InformationBar extends StatelessWidget {
  const InformationBar({
    required this.movie,
    required this.onFavorite,
    super.key,
  });

  final MovieModel? movie;
  final void Function(MovieModel? movie) onFavorite;

  @override
  Widget build(BuildContext context) {
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
              FavoriteButton(
                isFavorite: movie?.isFavorite ?? false,
                onPressed: () {
                  onFavorite(movie);
                },
              ),
              InformationTile(
                title: movie?.Title,
                description: movie?.Plot,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
