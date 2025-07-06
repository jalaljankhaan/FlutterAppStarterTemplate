import 'package:flutter/material.dart';

import '../../../../../core/responsiveness/widget/responsive_layout.dart';
import 'mobile_home_page.dart';
import 'tablet_home_page.dart';
import 'web_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MobileHomePage(),
      tablet: TabletHomePage(),
      web: WebHomePage(),
    );
  }
}