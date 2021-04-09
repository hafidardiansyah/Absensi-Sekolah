import 'package:flutter/material.dart';

import '../utils/ui/design.dart';

class ButtonWidget extends StatelessWidget {
  late void Function()? onPressed;
  late String text;
  late double minimumSize;

  ButtonWidget({this.onPressed, required this.text, required this.minimumSize});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;

    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: textLarge.copyWith(color: white),
      ),
      style: ElevatedButton.styleFrom(
        onPrimary: dark,
        primary: primary,
        elevation: 0,
        minimumSize: Size(_size.width, minimumSize),
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(28),
        ),
      ),
    );
  }
}
