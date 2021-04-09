import 'package:flutter/material.dart';

import '../ui/design.dart';

class RoundedButtonWidget extends StatelessWidget {
  final Function()? onPressed;
  final String text;
  final double height;
  final double width;

  const RoundedButtonWidget({
    required this.onPressed,
    required this.text,
    required this.height,
    required this.width,
  });

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
          borderRadius: BorderRadius.circular(28),
        ),
      ),
      child: Text(
        text,
        style: textLarge.copyWith(
            color: white, fontSize: 16, fontWeight: FontWeight.w600),
      ),
    );
  }
}
