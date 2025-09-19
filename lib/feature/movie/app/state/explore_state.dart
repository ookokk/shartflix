import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

part 'explore_state.freezed.dart';

@freezed
class ExploreState with _$ExploreState {
  factory ExploreState({
    @Default([]) List<MovieModel> movies,
    @Default(1) int currentPage,
    @Default(1) int maxPage,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
    @Default(0) int currentIndex,
  }) = _ExploreState;
}
