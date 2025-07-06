import 'package:flutterappstartertemplate/core/states/page_states.dart';

class AuthPhoneNumberValidState extends SuccessState {
  AuthPhoneNumberValidState(): super(message: '');
}

class AuthPhoneNumberRequiredState extends ErrorState {
  AuthPhoneNumberRequiredState() : super(error: 'Phone number cannot be empty');
}

class AuthInvalidPhoneNumberState extends ErrorState {
  AuthInvalidPhoneNumberState() : super(error: 'Enter a valid phone number');
}