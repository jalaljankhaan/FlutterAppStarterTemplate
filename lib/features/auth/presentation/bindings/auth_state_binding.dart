import 'package:get/get.dart';
import 'package:portfolio/core/logger/console_logger.dart';
import 'package:portfolio/features/auth/controllers/auth_state_controller.dart';
import 'package:portfolio/features/auth/core/validators/email_validator.dart';
import 'package:portfolio/features/auth/domain/services/supabase_login_service.dart';
import 'package:portfolio/features/auth/domain/use_cases/is_logged_in_usecase.dart';
import 'package:portfolio/features/auth/domain/use_cases/refresh_access_token_usecase.dart';
import 'package:portfolio/features/auth/domain/use_cases/login_usecase.dart';

import '../../domain/repository/login_repository_impl.dart';

class AuthStateBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConsoleLogger());
    Get.lazyPut(
      () => SupabaseLoginServiceImpl(logger: Get.find<ConsoleLogger>()),
    );
    Get.lazyPut(
      () => LoginRepositoryImpl(
        loginService: Get.find<SupabaseLoginServiceImpl>(),
      ),
    );
    Get.lazyPut(
      () => IsLoggedInUseCase(repository: Get.find<LoginRepositoryImpl>()),
    );
    Get.lazyPut(
      () => RefreshAccessTokenUseCase(
        repository: Get.find<LoginRepositoryImpl>(),
      ),
    );
    Get.lazyPut(
      () => AuthStateController(
        isLoggedInUseCase: Get.find<IsLoggedInUseCase>(),
        refreshAccessTokenUseCase: Get.find<RefreshAccessTokenUseCase>(),
      ),
    );
    Get.lazyPut(
      () => LoginUseCase(
        validator: Get.put(EmailValidator()),
        repository: Get.find<LoginRepositoryImpl>(),
      ),
    );
  }
}