import 'package:flutter/material.dart';
import 'package:portfolio/core/base/stateless_base.dart';
import 'package:portfolio/core/responsiveness/calculator/calculator.dart';

class WebHeaderMenuWidget extends StatelessPageWidget {
  const WebHeaderMenuWidget({super.key});

  @override
  Widget builder(BuildContext context, Calculator calc) {
    return SizedBox(
      height: 56,
      child: Padding(
        padding: EdgeInsets.all(calc.gap.extraSmall),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Spacer(flex: 1),
            Text(
              "Portfolio",
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: calc.textSize.titleLarge,
                color: Theme.of(context).primaryColor,
              ),
            ),
            Spacer(flex: 4),
            TextButton(onPressed: () => {}, child: Text('Home')),
            SizedBox(width: calc.gap.small),
            TextButton(onPressed: () => {}, child: Text('About me')),
            SizedBox(width: calc.gap.small),
            TextButton(onPressed: () => {}, child: Text('Skills')),
            SizedBox(width: calc.gap.small),
            TextButton(onPressed: () => {}, child: Text('Projects')),
            SizedBox(width: calc.gap.small),
            SizedBox(
              width: 100,
              height: 40,
              child: ElevatedButton(
                onPressed: () => {},
                child: Text('Hire me'),
              ),
            ),

            Spacer(flex: 1),
            SizedBox(width: 10),
          ],
        ),
      ),
    );
  }
}