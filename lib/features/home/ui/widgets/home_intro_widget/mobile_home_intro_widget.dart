import 'package:flutter/material.dart';
import 'package:flutterappstartertemplate/core/responsiveness/calculator/calculator.dart';
import 'package:flutterappstartertemplate/features/home/ui/widgets/home_intro_widget/home_intro_common_content_widget.dart';

import '../../../../../core/base/stateless_base.dart';


class MobileHomeIntroWidget extends StatelessPageWidget {
  const MobileHomeIntroWidget({super.key});

  @override
  Widget builder(BuildContext context, Calculator calc) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        HomeIntroCommonContentWidget(calc: calc),
        SizedBox(
          width: 150,
          height: 50,
          child: OutlinedButton(
            onPressed: () => {},
            child: Text(
              "View My Work",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
        SizedBox(height: calc.gap.small),
        SizedBox(
          width: 150,
          height: 50,
          child: ElevatedButton(
            onPressed: () => {},
            child: Text(
              "Hire me",
              // style: Theme.of(context).textTheme.titleLarge
            ),
          ),
        ),
      ],
    );
  }
}