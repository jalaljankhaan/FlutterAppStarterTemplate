import 'package:flutter/material.dart';

import '../enums/device_types.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget web;
  final Widget tablet;
  final Widget mobile;

  const ResponsiveLayout({
    super.key,
    required this.web,
    required this.tablet,
    required this.mobile,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= Device.web.width) {
              return web;
            } else if (constraints.maxWidth >= Device.tablet.width &&
                constraints.maxWidth < Device.web.width) {
              return tablet;
            } else {
              return mobile;
            }
          },
        ),
      ),
    );
  }
}