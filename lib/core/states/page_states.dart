
sealed class PageState {
  const PageState();
}

class InitialState extends PageState {
  const InitialState();
}

class LoadingState extends PageState {
  const LoadingState();
}

class ErrorState extends PageState {
  final String error;
  const ErrorState({required this.error});
}

class SuccessState extends PageState {
  final String message;
  SuccessState({required this.message});
}