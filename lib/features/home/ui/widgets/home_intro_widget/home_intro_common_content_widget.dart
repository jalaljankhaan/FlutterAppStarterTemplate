import 'package:flutter/material.dart';

import '../../../../../core/responsiveness/calculator/calculator.dart';

class HomeIntroCommonContentWidget extends StatelessWidget {
  final Calculator calc;

  const HomeIntroCommonContentWidget({super.key, required this.calc});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 0.7 * calc.device.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Hi, I'm",
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              fontSize: calc.textSize.paragraphLarge,
              color: Theme.of(context).primaryColor,
            ),
          ),
          SizedBox(height: calc.gap.extraSmall),
          Text(
            "Jalal Jan Khan",
            style: Theme.of(context).textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: calc.textSize.displaySmall,
            ),
          ),
          SizedBox(height: calc.gap.extraSmall),
          Text(
            "I build mobile applications.",
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: calc.textSize.headlineSmall,
              color: Theme.of(context).hintColor,
            ),
          ),
          SizedBox(height: calc.gap.extraSmall),
          Text(
            "I'm an experienced Android developer with 5+ years of expertise in creating robust mobile applications. Specializing in Java and Kotlin, I focus on building user-friendly and performant Android apps.",
            style: Theme.of(context).textTheme.bodyLarge,
            textAlign: TextAlign.center,
          ),
          SizedBox(height: calc.gap.normal),
        ],
      ),
    );
  }
}