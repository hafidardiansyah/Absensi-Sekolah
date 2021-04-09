import 'package:absensi_sekolah/ui/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircleButtonWidget extends StatelessWidget {
  const CircleButtonWidget({
    required this.onPressed,
    required this.icon,
    required this.size,
  });
  final Function()? onPressed;
  final String icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        onPrimary: gray5,
        primary: white,
        elevation: 0,
        minimumSize: Size(size, size),
        shadowColor: Colors.transparent,
        shape: const CircleBorder(),
      ),
      child: SvgPicture.asset(icon),
    );
  }
}
