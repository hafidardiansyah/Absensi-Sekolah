import 'package:flutter/material.dart';

import '../ui/design.dart';

class RoundedButtonWidget extends StatelessWidget {
  const RoundedButtonWidget({
    required this.onPressed,
    required this.text,
    required this.height,
    required this.width,
    required this.textStyle,
  });
  final Function()? onPressed;
  final String text;
  final double height, width;
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        onPrimary: dark,
        primary: primary,
        elevation: 0,
        minimumSize: Size(width, height),
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular((height / 2) + 3),
        ),
      ),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
