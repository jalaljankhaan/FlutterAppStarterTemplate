import 'package:portfolio/features/auth/data/repository/login_repository.dart';

class IsAccessTokenExpiredUseCase {
  final LoginRepository _repository;
  IsAccessTokenExpiredUseCase({required LoginRepository repository}) : _repository = repository;

  Future<bool> execute() async {
    try {
      final user = await _repository.getLoggedInUser();
      return user.accessToken.isEmpty;
    } catch (e) {
      return false;
    }
  }
}