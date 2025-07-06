import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutterappstartertemplate/features/auth/controllers/auth_controller.dart';
import 'package:flutterappstartertemplate/features/auth/widgets/auth_widget.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthPageWidget(
      isLoginPage: false,
      controller: Get.find<AuthController>()
    );
  }
}