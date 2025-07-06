import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final double width;
  final String title;

  final Function() onClicked;

  const ElevatedButtonWidget({
    super.key,
    required this.title,
    required this.width,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      // height: 45,
      child: ElevatedButton(
        onPressed: onClicked,
        style: Theme.of(context).elevatedButtonTheme.style,
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge
        ),
      ),
    );
  }
}