import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/feature/movie/app/state/explore_state.dart';
import 'package:shartflix/feature/movie/app/view_model/profile_view_model.dart';
import 'package:shartflix/feature/movie/data/movie_repository_impl.dart';
import 'package:shartflix/feature/movie/data/movie_service_impl.dart';
import 'package:shartflix/feature/movie/domain/fetch_movies_use_case.dart';
import 'package:shartflix/feature/movie/domain/like_movie_use_case.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';

class ExploreViewModel extends StateNotifier<ExploreState> {
  ExploreViewModel({
    required this.fetchMoviesUseCase,
    required this.likeMovieUseCase,
  }) : super(ExploreState()) {
    _fetchInitial();
  }
  final FetchMoviesUseCase fetchMoviesUseCase;
  final LikeMovieUseCase likeMovieUseCase;

  void _fetchInitial() {
    Future.microtask(fetchMovies);
  }

  Future<bool> fetchMovies({int page = 1}) async {
    state = state.copyWith(isLoading: true, isError: false);
    try {
      final movies = await fetchMoviesUseCase.call(page: page);
      state = state.copyWith(
        movies: page == 1 ? movies : [...state.movies, ...movies],
        currentPage: page,
        maxPage: page + 1,
        isLoading: false,
        isError: false,
      );
      return true;
    } catch (_) {
      state = state.copyWith(isError: true, isLoading: false);
      return false;
    }
  }

  Future<void> likeMovie(MovieModel movie, WidgetRef ref) async {
    final currentFav = movie.isFavorite ?? false;
    state = state.copyWith(
      movies: state.movies.map((m) {
        if (m.id == movie.id) {
          return m.copyWith(isFavorite: !(m.isFavorite ?? false));
        }
        return m;
      }).toList(),
    );
    final updatedMovie = await likeMovieUseCase.call(movie);
    if (updatedMovie == null) {
      state = state.copyWith(
        movies: state.movies.map((m) {
          if (m.id == movie.id) return m.copyWith(isFavorite: currentFav);
          return m;
        }).toList(),
      );
    } else {
      await ref.read(profileProvider.notifier).fetchInitial();
    }
  }

  void setCurrentIndex(int index) {
    state = state.copyWith(currentIndex: index);
  }

  void cleanState() {
    state = ExploreState();
  }
}

final exploreProvider =
    StateNotifierProvider<ExploreViewModel, ExploreState>((ref) {
      final repo = MovieRepositoryImpl(MovieServiceImpl());
      return ExploreViewModel(
        fetchMoviesUseCase: FetchMoviesUseCase(repo),
        likeMovieUseCase: LikeMovieUseCase(repo),
      );
    });
