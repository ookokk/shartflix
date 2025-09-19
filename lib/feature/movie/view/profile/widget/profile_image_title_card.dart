import 'package:flutter/material.dart';
import 'package:shartflix/core/const/extensions/context_extension.dart';
import 'package:shartflix/core/const/extensions/custom_app_sizes.dart';
import 'package:shartflix/feature/movie/view/profile/widget/screen_size_image.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

class ProfileImageTitleCard extends StatelessWidget {
  const ProfileImageTitleCard({required this.movie, super.key});

  final MovieModel movie;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        spacing: CustomAppSizes.xSmall,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(CustomAppSizes.medium),
              child: ScreenSizeImage(imageUrl: movie.Poster),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                movie.Title ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colorScheme.errorContainer,
                ),
              ),
              if (movie.Genre != null)
                Text(
                  movie.Genre!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: context.textTheme.headlineSmall?.copyWith(
                    color: Colors.grey,
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
