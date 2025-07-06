import '../dto/user_dto.dart';

abstract class LoginService {
  Future<bool> login(
    final String email,
    final String password,
    final bool isNewUser,
  );

  Future<void> loginWithGoogle();

  Future<void> loginWithApple();

  Future<UserDto?> getLoggedInUser();

  Future<void> logout();
}