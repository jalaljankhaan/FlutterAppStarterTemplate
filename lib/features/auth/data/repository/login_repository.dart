import 'package:flutterappstartertemplate/core/states/page_states.dart';

import '../../domain/models/user_model.dart';

abstract class LoginRepository {
  Future<PageState> login(
    final String email,
    final String password,
    final bool isNewUser,
  );

  Future<void> loginWithGoogle();

  Future<void> loginWithApple();

  Future<UserModel> getLoggedInUser();

  Future<void> logout();
}