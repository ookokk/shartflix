import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shartflix/core/init/cache_manager.dart';
import 'package:shartflix/core/init/network_manager.dart';
import 'package:shartflix/feature/auth/data/auth_repository_impl.dart';
import 'package:shartflix/feature/auth/data/auth_service_impl.dart';
import 'package:shartflix/feature/auth/domain/get_profile_use_case.dart';
import 'package:shartflix/feature/movie/app/state/profile_state.dart';
import 'package:shartflix/feature/movie/data/movie_service_impl.dart';
import 'package:shartflix/feature/movie/data/profile_repository.dart';
import 'package:shartflix/feature/movie/domain/get_favorites_use_case.dart';

class ProfileViewModel extends StateNotifier<ProfileState> {
  ProfileViewModel({
    required this.getProfileUseCase,
    required this.getFavoritesUseCase,
  }) : super(ProfileState()) {
    fetchInitial();
  }
  final GetProfileUseCase getProfileUseCase;
  final GetFavoritesUseCase getFavoritesUseCase;

  Future<void> fetchInitial() async {
    state = state.copyWith(isLoading: true, isError: false);
    try {
      final user = await getProfileUseCase.call();
      final favorites = await getFavoritesUseCase.call();
      state = state.copyWith(
        currentUser: user,
        favoritesList: favorites,
        isLoading: false,
      );
    } catch (e) {
      state = state.copyWith(isError: true, isLoading: false);
    }
  }

  void cleanState() {
    state = ProfileState();
  }
}

final profileProvider =
    StateNotifierProvider<ProfileViewModel, ProfileState>((ref) {
      final repo = ProfileRepositoryImpl(
        authRepository: AuthRepositoryImpl(
          AuthServiceImpl(NetworkManager.instance, CacheManager.instance),
        ),
        movieService: MovieServiceImpl(),
      );
      return ProfileViewModel(
        getProfileUseCase: GetProfileUseCase(repo),
        getFavoritesUseCase: GetFavoritesUseCase(repo),
      );
    });
