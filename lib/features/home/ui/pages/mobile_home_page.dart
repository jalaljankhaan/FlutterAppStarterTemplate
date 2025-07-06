import 'package:flutter/material.dart';
import 'package:portfolio/core/base/stateless_base.dart';
import 'package:portfolio/core/responsiveness/calculator/calculator.dart';
import 'package:portfolio/features/home/ui/widgets/home_intro_widget/mobile_home_intro_widget.dart';

class MobileHomePage extends StatelessPageWidget {
  const MobileHomePage({super.key});

  @override
  Widget builder(BuildContext context, Calculator calc) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Portfolio",
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontSize: calc.textSize.titleLarge,
            color: Theme.of(context).primaryColor,
          ),
        ),
        centerTitle: false,
      ),
      body: MobileHomeIntroWidget(),
    );
  }
}