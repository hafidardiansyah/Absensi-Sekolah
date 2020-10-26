import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class SocialIcon extends StatelessWidget {
  final String icon;
  final Function onTap;

  const SocialIcon({Key key, this.icon, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: primaryColor,
            ),
            shape: BoxShape.circle),
        child: Image.asset(
          icon,
          height: 24,
          width: 24,
        ),
      ),
    );
  }
}
