import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutterappstartertemplate/features/auth/widgets/auth_widget.dart';
import 'package:flutterappstartertemplate/features/auth/controllers/auth_controller.dart';

class LoginPage extends StatelessWidget {

  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageWidget(
      isLoginPage: true,
      controller: Get.find<AuthController>(),
    );
  }
}