import 'package:portfolio/core/states/page_states.dart';
import 'package:portfolio/core/validator/validator.dart';
import 'package:portfolio/features/auth/presentation/states/auth_phone_number_states.dart';

class PhoneNumberValidator implements Validator {
  @override
  PageState validate(String value) {
    // Check if the phone number is empty
    if (value.isEmpty) {
      return AuthPhoneNumberRequiredState();
    }

    // Regex pattern for validating international phone numbers
    final RegExp phoneRegex = RegExp(
      r'^\+?[1-9]\d{1,14}([-\s]?\(?\d{1,4}\)?[-\s]?\d{1,4}){1,4}$',
    );

    // If the phone number doesn't match the pattern
    if (!phoneRegex.hasMatch(value)) {
      return AuthInvalidPhoneNumberState();
    }

    return AuthPhoneNumberValidState(); // If valid
  }
}