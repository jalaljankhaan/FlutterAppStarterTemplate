import 'package:portfolio/core/states/page_states.dart';
import 'package:portfolio/core/validator/validator.dart';
import 'package:portfolio/features/auth/presentation/states/auth_password_states.dart';

class PasswordValidator implements Validator {
  @override
  PageState validate(String value) {
    // Check if password is empty
    if (value.isEmpty) {
      return AuthPasswordRequiredState();
    }

    // Check password length
    if (value.length < 6) {
      return AuthPasswordTooShortState();
    }

    // Check for at least one uppercase letter
    if (!RegExp(r'[A-Z]').hasMatch(value)) {
      return AuthPasswordOneUpperCaseState();
    }

    // Check for at least one lowercase letter
    if (!RegExp(r'[a-z]').hasMatch(value)) {
      return AuthPasswordOneLowerCaseState();
    }

    // Check for at least one special character (e.g., @, #, $, etc.)
    if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)) {
      return AuthPasswordOneSpecialCharacterState();
    }

    return AuthPasswordValidState();
  }
}