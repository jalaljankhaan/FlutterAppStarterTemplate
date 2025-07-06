import 'package:flutter/material.dart';
import 'package:portfolio/core/base/stateless_base.dart';
import 'package:portfolio/core/responsiveness/calculator/calculator.dart';
import 'package:portfolio/features/home/ui/widgets/home_intro_widget/web_home_intro_widget.dart';

import '../widgets/header_menu_widget/web_header_menu_widget.dart';


class WebHomePage extends StatelessPageWidget {
  const WebHomePage({super.key});

  @override
  Widget builder(BuildContext context, Calculator calc) {
    return SafeArea(
      child: Column(
        children: [
          WebHeaderMenuWidget(),
          Divider(),
          Expanded(
            child: Column(
              children: [
                WebHomeIntroWidget(),
              ],
            )
          ),
        ],
      ),
    );
  }
}