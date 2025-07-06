import 'package:portfolio/features/auth/data/repository/login_repository.dart';

class IsLoggedInUseCase {
  final LoginRepository _repository;
  IsLoggedInUseCase({required LoginRepository repository}) : _repository = repository;

  Future<bool> execute() async {
    try {
      final user = await _repository.getLoggedInUser();
      return user.email.isNotEmpty && user.accessToken.isNotEmpty;
    } catch (e) {
      return false;
    }
  }
}