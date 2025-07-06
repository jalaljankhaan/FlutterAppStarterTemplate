import 'package:flutterappstartertemplate/core/states/page_states.dart';
import 'package:flutterappstartertemplate/features/auth/data/dto/user_dto.dart';
import 'package:flutterappstartertemplate/features/auth/data/repository/login_repository.dart';
import 'package:flutterappstartertemplate/features/auth/data/services/login_service.dart';
import 'package:flutterappstartertemplate/features/auth/presentation/states/auth_fail_states.dart';
import 'package:flutterappstartertemplate/features/auth/presentation/states/auth_success_states.dart';

import '../models/user_model.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginService _loginService;

  LoginRepositoryImpl({required LoginService loginService})
    : _loginService = loginService;

  @override
  Future<PageState> login(
    final String email,
    final String password,
    final bool isNewUser,
  ) async {
    try {
      final isSuccessful = await _loginService.login(
        email,
        password,
        isNewUser,
      );

      if (isSuccessful) {
        return AuthenticatedState(source: email);
      } else {
        return AuthFailedState(error: 'Unable to authenticate!');
      }
    } catch (error) {
      return AuthFailedState(error: error.toString());
    }
  }

  @override
  Future<void> loginWithGoogle() async {
    _loginService.loginWithGoogle();
  }

  @override
  Future<void> loginWithApple() async {
    _loginService.loginWithApple();
  }

  @override
  Future<UserModel> getLoggedInUser() async {
    final user = await _loginService.getLoggedInUser();
    return user.map();
  }

  @override
  Future<void> logout() async {
    _loginService.logout();
  }
}