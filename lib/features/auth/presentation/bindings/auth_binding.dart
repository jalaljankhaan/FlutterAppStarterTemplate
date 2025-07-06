import 'package:get/get.dart';
import 'package:flutterappstartertemplate/features/auth/controllers/auth_controller.dart';
import 'package:flutterappstartertemplate/features/auth/domain/repository/login_repository_impl.dart';
import 'package:flutterappstartertemplate/features/auth/domain/use_cases/login_usecase.dart';

import '../../core/validators/email_validator.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmailValidator());

    Get.lazyPut(
      () => LoginUseCase(
        validator: Get.find<EmailValidator>(),
        repository: Get.find<LoginRepositoryImpl>(),
      ),
    );

    Get.lazyPut(
      () => AuthController(
        loginUseCase: Get.find<LoginUseCase>()
      ),
    );
  }
}