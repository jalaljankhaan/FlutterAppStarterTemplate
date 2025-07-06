import 'package:flutterappstartertemplate/features/auth/data/repository/login_repository.dart';

class RefreshAccessTokenUseCase {
  final LoginRepository _repository;

  RefreshAccessTokenUseCase({required LoginRepository repository})
    : _repository = repository;

  Future<String> execute() async {
    try {
      final user = await _repository.getLoggedInUser();
      return user.accessToken;
    } catch (e) {
      return "";
    }
  }
}