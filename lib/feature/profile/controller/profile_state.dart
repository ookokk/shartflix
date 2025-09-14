import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shartflix/product/model/auth/auth_response_model.dart';
import 'package:shartflix/product/model/movie/movie_favorites_list_response_model.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  factory ProfileState({
    MovieFavoritesListResponseModel? favoritesList,
    UserModel? currentUser,
    @Default(false) bool isLoading,
    @Default(false) bool isError,
  }) = _ProfileState;
}
