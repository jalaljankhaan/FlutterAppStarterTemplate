import 'package:flutter/material.dart';
import 'package:portfolio/core/responsiveness/calculator/calculator.dart';
import 'package:portfolio/features/home/ui/widgets/home_intro_widget/home_intro_common_content_widget.dart';

import '../../../../../core/base/stateless_base.dart';


class TabletHomeIntroWidget extends StatelessPageWidget {
  const TabletHomeIntroWidget({super.key});

  @override
  Widget builder(BuildContext context, Calculator calc) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        HomeIntroCommonContentWidget(calc: calc),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          spacing: calc.gap.small,
          children: [
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
        ),
      ],
    );
  }
}