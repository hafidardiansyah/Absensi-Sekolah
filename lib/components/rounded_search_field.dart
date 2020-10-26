import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class RoundedSearchField extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Color conColor;
  final String hintText;
  final Color hintColor;
  final ValueChanged<String> onChanged;

  const RoundedSearchField(
      {Key key,
      this.icon,
      this.color,
      this.conColor,
      this.hintText,
      this.hintColor,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      decoration: BoxDecoration(
          color: conColor,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: lightColor,
              offset: Offset(0, 10),
              blurRadius: 20,
            )
          ]),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      width: size.width * 0.9,
      child: TextField(
        cursorColor: color,
        onChanged: onChanged,
        style: TextStyle(color: blackColor),
        decoration: InputDecoration(
            icon: Icon(
              icon,
              color: color,
            ),
            fillColor: color,
            hintText: hintText,
            border: InputBorder.none,
            hintStyle: TextStyle(
                color: hintColor, fontFamily: "Poppins-Regular", fontSize: 14)),
      ),
    );
  }
}
