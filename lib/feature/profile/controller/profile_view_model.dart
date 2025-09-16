import 'package:riverpod/riverpod.dart';
import 'package:shartflix/feature/profile/controller/profile_state.dart';
import 'package:shartflix/product/service/auth_service.dart';
import 'package:shartflix/product/service/movie_service.dart';

class ProfileViewModel extends StateNotifier<ProfileState> {
  ProfileViewModel() : super(ProfileState()) {
    fetchInitial();
  }

  Future<void> fetchInitial() async {
    state = state.copyWith(isLoading: true, isError: false);
    try {
      final userResult = await AuthService.instance.userProfile();
      final favoritesResult = await MovieService.instance.favoritesList();
      state = state.copyWith(
        currentUser: userResult!.data,
        favoritesList: favoritesResult,
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

final profileProvider = StateNotifierProvider<ProfileViewModel, ProfileState>(
  (ref) => ProfileViewModel(),
);
