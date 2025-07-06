import '../../../../core/states/page_states.dart';

class AuthPasswordValidState extends SuccessState {
  AuthPasswordValidState(): super(message: '');
}

class AuthPasswordRequiredState extends ErrorState {
  AuthPasswordRequiredState(): super(error: 'Password is required!');
}

class AuthPasswordTooShortState extends ErrorState {
  AuthPasswordTooShortState(): super(error: 'Password must be at least 6 characters long!');
}

class AuthPasswordOneUpperCaseState extends ErrorState {
  AuthPasswordOneUpperCaseState(): super(error: 'Password must contain at least one uppercase letter!');
}

class AuthPasswordOneLowerCaseState extends ErrorState {
  AuthPasswordOneLowerCaseState(): super(error: 'Password must contain at least one lowercase letter!');
}

class AuthPasswordOneSpecialCharacterState extends ErrorState {
  AuthPasswordOneSpecialCharacterState(): super(error: 'Password must contain at least one special character!');
}

class AuthConfirmPasswordRequiredState extends ErrorState {
  AuthConfirmPasswordRequiredState(): super(error: 'Confirm Password is required!');
}

class AuthPasswordsDoNotMatchState extends ErrorState {
  AuthPasswordsDoNotMatchState(): super(error: 'Passwords do not match!');
}