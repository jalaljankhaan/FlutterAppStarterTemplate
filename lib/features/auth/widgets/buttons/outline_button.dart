import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class OutlineButtonWidget extends StatelessWidget {
  final double width;
  final String title, assetIcon;
  final Function() onClicked;

  const OutlineButtonWidget({
    super.key,
    required this.title,
    required this.assetIcon,
    required this.width,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 45,
      child: OutlinedButton.icon(
        icon: SvgPicture.asset(assetIcon),
        onPressed: onClicked,
        label: Text(title, style: Theme.of(context).textTheme.bodyLarge),
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: Theme.of(context).dividerColor),
        ),
      ),
    );
  }
}