import 'package:flutterappstartertemplate/features/auth/data/repository/login_repository.dart';

class LogoutUseCase {
  final LoginRepository _repository;

  LogoutUseCase({required LoginRepository repository}) : _repository = repository;

  Future<void> execute() async {
    _repository.logout();
  }
}