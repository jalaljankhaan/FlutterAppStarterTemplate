import 'package:portfolio/core/states/page_states.dart';
import 'package:portfolio/core/validator/validator.dart';
import 'package:portfolio/features/auth/presentation/states/auth_email_states.dart';

class EmailValidator implements Validator {
  @override
  PageState validate(String value) {
    if (value.isEmpty) {
      return AuthEmailRequiredState();
    }

    final RegExp emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    final bool isValid = emailRegex.hasMatch(value);
    if (!isValid) {
      return AuthInvalidEmailState();
    }

    return AuthEmailValidState(); // Email is valid
  }
}