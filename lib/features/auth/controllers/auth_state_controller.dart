import 'package:get/get.dart';
import 'package:flutterappstartertemplate/core/states/page_states.dart';
import 'package:flutterappstartertemplate/features/auth/domain/use_cases/is_logged_in_usecase.dart';
import 'package:flutterappstartertemplate/features/auth/domain/use_cases/refresh_access_token_usecase.dart';

import '../presentation/states/auth_success_states.dart';

class AuthStateController extends GetxController {
  final IsLoggedInUseCase _isLoggedInUseCase;
  final RefreshAccessTokenUseCase _refreshAccessTokenUseCase;
  final Rx<PageState> _state = Rx(InitialState());

  AuthStateController({required IsLoggedInUseCase isLoggedInUseCase, required RefreshAccessTokenUseCase refreshAccessTokenUseCase})
    : _isLoggedInUseCase = isLoggedInUseCase, _refreshAccessTokenUseCase = refreshAccessTokenUseCase;

  PageState get state => _state.value;

  @override
  void onInit() {
    super.onInit();
    _isUserLoggedIn();
    _refreshAccessToken();
  }

  void _isUserLoggedIn() async {
    if (await _isLoggedInUseCase.execute()) {
      _state.value = AuthAlreadyLoggedInState();
    } else {
      _state.value = AuthLoggedOutState();
    }
  }

  void _refreshAccessToken() async {
    final token = await _refreshAccessTokenUseCase.execute();
    print("Bearer $token");
  }
}