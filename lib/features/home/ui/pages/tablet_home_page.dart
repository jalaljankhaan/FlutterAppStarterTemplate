import 'package:flutter/material.dart';
import 'package:portfolio/core/base/stateless_base.dart';
import 'package:portfolio/core/responsiveness/calculator/calculator.dart';

import '../widgets/header_menu_widget/tablet_header_menu_widget.dart';
import '../widgets/home_intro_widget/tablet_home_intro_widget.dart';


class TabletHomePage extends StatelessPageWidget {
  const TabletHomePage({super.key});

  @override
  Widget builder(BuildContext context, Calculator calc) {
    return SafeArea(
      child: Column(
        children: [
          TabletHeaderMenuWidget(),
          Divider(),
          Expanded(
              child: Column(
                children: [
                  TabletHomeIntroWidget(),
                ],
              )
          ),
        ],
      ),
    );
  }
}