import 'package:portfolio/core/states/page_states.dart';

class AuthenticatedState extends SuccessState {
  final String source;
  AuthenticatedState({required this.source}): super(message: '$source has been authenticated successfully!');
}

class AuthAlreadyLoggedInState extends SuccessState {
  AuthAlreadyLoggedInState(): super(message: '');
}

class AuthLoggedOutState extends SuccessState {
  AuthLoggedOutState(): super(message: '');
}