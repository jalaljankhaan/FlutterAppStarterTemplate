import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/features/auth/controllers/auth_state_controller.dart';
import 'package:portfolio/features/auth/presentation/bindings/auth_state_binding.dart';
import 'package:portfolio/features/auth/presentation/states/auth_success_states.dart';
import 'package:portfolio/style/themes/app_themes.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'core/constants/routes.dart';
import 'features/auth/ui/login.dart';
import 'features/home/ui/pages/home_page.dart';
import 'features/auth/presentation/bindings/auth_binding.dart';

final url = "https://coamurxaeslehwmhkvnv.supabase.co";
final anonymousKey =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNvYW11cnhhZXNsZWh3bWhrdm52Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NTA0OTIyNjcsImV4cCI6MjA2NjA2ODI2N30.PbpdcCM-xIy7Bt0DtcUEns3z2FEYcRv_zWsTdrRUZ2I";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: url, anonKey: anonymousKey);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final DarkModeThemeData _darkTheme = DarkModeThemeData();
  final LightModeThemeData _lightTheme = LightModeThemeData();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return OrientationBuilder(
          builder: (_, orientation) {
            return Builder(
              builder: (context) {
                return GetMaterialApp(
                  title: 'Portfolio',
                  theme: _lightTheme.themeData,
                  themeMode: ThemeMode.dark,
                  darkTheme: _darkTheme.themeData,
                  debugShowCheckedModeBanner: false,
                  navigatorObservers: _navigationObservers(),
                  initialRoute: initialRoute,
                  initialBinding: AuthStateBinding(),
                  getPages: _pages(),
                );
              },
            );
          },
        );
      },
    );
  }

  List<NavigatorObserver> _navigationObservers() {
    return [
      GetObserver((routing) async {
        final controller = Get.find<AuthStateController>();
        if (controller.state is AuthLoggedOutState &&
            !_isPublicRoute(routing?.current)) {
          Get.offAllNamed(loginRoute);
        }
      }),
    ];
  }

  bool _isPublicRoute(String? route) {
    var routes = [loginRoute, signUpRoute];
    return route != null && route.isNotEmpty && routes.contains(route);
  }

  List<GetPage<dynamic>> _pages() {
    return [
      GetPage(
        name: initialRoute,
        binding: AuthStateBinding(),
        page: () => HomePage(),
      ),
      GetPage(
        name: loginRoute,
        binding: AuthBinding(),
        page: () => LoginPage(),
      ),
      GetPage(name: homeRoute, page: () => HomePage()),
    ];
  }
}