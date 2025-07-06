import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutterappstartertemplate/core/constants/routes.dart';
import 'package:flutterappstartertemplate/features/auth/controllers/auth_state_controller.dart';
import 'package:flutterappstartertemplate/features/auth/presentation/states/auth_success_states.dart';

class SplashPage extends StatelessWidget {
  final AuthStateController _controller = Get.find<AuthStateController>();

  SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() {
          final state = _controller.state;
          if (state is AuthAlreadyLoggedInState) {
            Future.microtask(() => Get.offAllNamed(homeRoute));
          } else if (state is AuthLoggedOutState) {
            Future.microtask(() => Get.offAllNamed(loginRoute));
          }

          return const CircularProgressIndicator();
        }),
      ),
    );
  }
}