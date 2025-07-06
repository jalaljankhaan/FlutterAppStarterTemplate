import '../../../../core/states/page_states.dart';

class AuthEmailValidState extends SuccessState {
  AuthEmailValidState() : super(message: '');
}

class AuthEmailRequiredState extends ErrorState {
  AuthEmailRequiredState() : super(error: 'Email address cannot be empty');
}

class AuthInvalidEmailState extends ErrorState {
  AuthInvalidEmailState() : super(error: 'Email is invalid');
}