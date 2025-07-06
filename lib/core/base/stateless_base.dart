import 'package:flutter/material.dart';
import 'package:portfolio/core/responsiveness/calculator/calculator.dart';
import 'package:portfolio/core/responsiveness/calculator/text_sizes/web_text_sizes.dart';
import 'package:portfolio/core/responsiveness/widget/responsive_layout.dart';

import '../responsiveness/calculator/gap/mobile_gap.dart';
import '../responsiveness/calculator/gap/tablet_gap.dart';
import '../responsiveness/calculator/gap/web_gap.dart';
import '../responsiveness/calculator/text_sizes/mobile_text_sizes.dart';
import '../responsiveness/calculator/text_sizes/tablet_text_sizes.dart';
import '../responsiveness/enums/device_types.dart';

abstract class StatelessPageWidget extends StatelessWidget {
  const StatelessPageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      web: builder(
        context,
        Calculator(gap: WebGap(), textSize: WebTextSize(), device: Device.web),
      ),
      tablet: builder(
        context,
        Calculator(
          gap: TabletGap(),
          textSize: TabletTextSize(),
          device: Device.tablet,
        ),
      ),
      mobile: builder(
        context,
        Calculator(
          gap: MobileGap(),
          textSize: MobileTextSize(),
          device: Device.mobile,
        ),
      ),
    );
  }

  Widget builder(BuildContext context, Calculator calc);
}