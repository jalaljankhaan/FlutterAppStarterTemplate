import 'package:portfolio/core/states/page_states.dart';
import 'package:portfolio/core/validator/validator.dart';
import 'package:portfolio/features/auth/data/repository/login_repository.dart';
import 'package:portfolio/features/auth/presentation/states/auth_email_states.dart';

class LoginUseCase {
  final Validator _validator;
  final LoginRepository _repository;

  LoginUseCase({
    required Validator validator,
    required LoginRepository repository,
  }) : _validator = validator,
       _repository = repository;

  Future<PageState> execute(
    final String email,
    final String password,
    final bool isNewUser,
  ) async {
    final state = _validator.validate(email);

    if (state is AuthEmailValidState) {
      return await _repository.login(email, password, isNewUser);
    } else {
      return state;
    }
  }
}