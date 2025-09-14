import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/feature/explore/controller/explore_state.dart';
import 'package:shartflix/feature/profile/controller/profile_view_model.dart';
import 'package:shartflix/product/model/movie/movie_model.dart';
import 'package:shartflix/product/service/movie_service.dart';

class ExploreViewModel extends StateNotifier<ExploreState> {
  ExploreViewModel() : super(ExploreState()) {
    _fetchInitial();
  }

  void _fetchInitial() {
    Future.microtask(fetchMovies);
  }

  Future<bool> fetchMovies({int page = 1}) async {
    state = state.copyWith(isLoading: true, isError: false);

    try {
      final res = await MovieService.instance.list(page: page);
      if (res?.response?.code == null || res!.response!.code! >= 400) {
        state = state.copyWith(isError: true, isLoading: false);
        return false;
      }

      final movies = res.data?.movies ?? [];
      final pagination = res.data?.pagination;

      state = state.copyWith(
        movies: page == 1 ? movies : [...state.movies, ...movies],
        currentPage: pagination?.currentPage ?? state.currentPage,
        maxPage: pagination?.maxPage ?? state.maxPage,
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

    // 1️⃣ UI update
    state = state.copyWith(
      movies: state.movies.map((m) {
        if (m.id == movie.id) return m.copyWith(isFavorite: !currentFav);
        return m;
      }).toList(),
    );

    // 2️⃣ API Request
    final res = await MovieService.instance.favorite(movieId: movie.id!);
    if (res?.response?.code == null || res!.response!.code! >= 400) {
      // 3️⃣ Api false response
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
}

final exploreProvider =
    StateNotifierProvider<ExploreViewModel, ExploreState>(
      (ref) => ExploreViewModel(),
    );

final exploreFutureProvider = FutureProvider.autoDispose.family<bool, int>(
  (ref, page) async {
    final success = await ref
        .read(exploreProvider.notifier)
        .fetchMovies(page: page);
    return success;
  },
);
