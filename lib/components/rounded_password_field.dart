import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({Key key, this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.9,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
      decoration: BoxDecoration(
          color: superLightColor, borderRadius: BorderRadius.circular(30)),
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
        cursorColor: primaryColor,
        style: TextStyle(color: blackColor),
        decoration: InputDecoration(
            icon: Icon(
              Icons.lock,
              color: primaryColor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: primaryColor,
            ),
            fillColor: primaryColor,
            hintText: "Masukkan password kamu!",
            hintStyle: TextStyle(
                color: lightColor, fontFamily: "Poppins-Regular", fontSize: 14),
            border: InputBorder.none),
      ),
    );
  }
}
