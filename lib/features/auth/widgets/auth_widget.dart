import 'package:flutter/material.dart';
import 'package:flutterappstartertemplate/features/auth/controllers/auth_controller.dart';

class AuthPageWidget extends StatelessWidget {
  final bool isLoginPage;
  final AuthController controller;

  const AuthPageWidget({
    super.key,
    required this.isLoginPage,
    required this.controller,
  });

  String get headingText =>
      isLoginPage ? 'Log in to your account' : 'Sign Up to your account';

  String get subHeadingText =>
      isLoginPage
          ? 'Welcome back! Please enter your details.'
          : 'Please enter your details.';

  String get secondaryActionLabel =>
      isLoginPage ? "Don't have an account?" : "Already have an account?";

  String get secondaryActionTitle => isLoginPage ? "Sign Up" : "Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Authentication Screen'),
        ) /*SingleChildScrollView(
          child: Column(
            children: [
              FlutterLogo(),
              SizedBox(height: xlgGap),
              Obx(() {
                final state = controller.state;

                if (state is LoadingState) {
                  return const Center(child: CircularProgressIndicator());
                } else {
                  return Center(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 400),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: smGap),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              headingText,
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                            SizedBox(height: smGap),
                            Text(
                              subHeadingText,
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            SizedBox(height: lgGap),
                            TextFormField(
                              controller: controller.emailController,
                              decoration: InputDecoration(
                                hintText: 'Enter your email',
                                errorText: controller.stateFieldErrorMessage(),
                                hintStyle:
                                    Theme.of(context).textTheme.labelMedium,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                    buttonRadiusSize,
                                  ),
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: mdGap,
                                  horizontal: smGap,
                                ),
                              ),
                              onChanged: (text) {
                                controller.state = InitialState();
                              },
                            ),
                            SizedBox(height: mdGap),
                            ElevatedButtonWidget(
                              width: 400,
                              title: 'Continue with Email',
                              device: DeviceType.WEB,
                              onClicked: () {
                                controller.authenticate(
                                  controller.emailController.text,
                                  controller.passwordController.text,
                                  !isLoginPage,
                                );
                              },
                            ),
                            SizedBox(height: lgGap),
                            Row(
                              children: [
                                Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    color: Theme.of(context).dividerColor,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: smGap,
                                  ),
                                  child: Text(
                                    'or continue with',
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ),
                                Expanded(
                                  child: Divider(
                                    thickness: 1,
                                    color: Theme.of(context).dividerColor,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: lgGap),
                            OutlineButtonWidget(
                              width: 400,
                              title: 'Continue with Google',
                              assetIcon: iconGoogle,
                              device: DeviceType.WEB,
                              onClicked: () {
                                Get.snackbar(
                                  "",
                                  "Google signing will be implemented in future!",
                                );
                              },
                            ),
                            SizedBox(height: smGap),
                            OutlineButtonWidget(
                              width: 400,
                              title: 'Continue with Apple',
                              assetIcon: iconApple,
                              device: DeviceType.WEB,
                              onClicked: () {
                                Get.snackbar(
                                  "",
                                  "Apple signing will be implemented in future!",
                                );
                              },
                            ),
                            SizedBox(height: lgGap),
                            SizedBox(
                              height: xlgGap,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    secondaryActionLabel,
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      if (isLoginPage) {
                                        Get.to(() => const SignUpPage());
                                      } else {
                                        Get.off(() => const LoginPage());
                                      }
                                    },
                                    child: Text(
                                      secondaryActionTitle,
                                      style:
                                          Theme.of(
                                            context,
                                          ).textTheme.bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
              }),
            ],
          ),
        ),*/,
      ),
    );
  }
}