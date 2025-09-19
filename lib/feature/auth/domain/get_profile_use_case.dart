import 'package:shartflix/feature/movie/data/profile_repository.dart';
import 'package:shartflix/product/model/user/user_model.dart';

class GetProfileUseCase {
  GetProfileUseCase(this.repository);
  final ProfileRepository repository;

  Future<UserModel?> call() async {
    return repository.getCurrentUser();
  }
}
