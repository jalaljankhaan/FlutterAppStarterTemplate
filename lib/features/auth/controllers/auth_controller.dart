import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/core/constants/routes.dart';
import 'package:portfolio/core/states/page_states.dart';
import 'package:portfolio/features/auth/presentation/states/auth_fail_states.dart';
import 'package:portfolio/features/auth/presentation/states/auth_success_states.dart';

import '../domain/use_cases/login_usecase.dart';

class AuthController extends GetxController {
  final LoginUseCase _loginUseCase;

  LoginUseCase get loginUseCase => _loginUseCase;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthController({required LoginUseCase loginUseCase})
    : _loginUseCase = loginUseCase;

  TextEditingController get emailController => _emailController;

  TextEditingController get passwordController => _passwordController;

  final Rx<PageState> _state = Rx<PageState>(InitialState());

  PageState get state => _state.value;

  set state(final PageState value) => _state.value = value;

  @override
  void onInit() async {
    super.onInit();

    // Observe state
    ever(_state, (PageState currentState) {
      if (currentState is AuthFailedState) {
        Get.snackbar("Authentication failed!", currentState.error);
      } else if (currentState is AuthenticatedState) {
        Get.toNamed(homeRoute);
      } else if (currentState is AuthAlreadyLoggedInState) {
        Get.offAllNamed(homeRoute);
      } else if (currentState is AuthLoggedOutState) {
        Get.offAll(loginRoute);
      }
    });
  }

  void authenticate(
    final String email,
    final String password,
    final bool isSignUpPage,
  ) {
    state = LoadingState();
    try {
      loginUseCase.execute(email, password, isSignUpPage).then((value) {
        state = value;
      });
    } catch (error) {
      state = AuthFailedState(error: error.toString());
    }
  }

  String? stateFieldErrorMessage() {
    if (state is AuthFailedState) {
      return null;
    }

    if (state is ErrorState) {
      return (state as ErrorState).error;
    }

    return null;
  }

  @override
  void onClose() {
    _state.close();
    _emailController.dispose();
    _passwordController.dispose();
    super.onClose();
  }
}