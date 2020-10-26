import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Function onPress;

  const RoundedButton({
    Key key,
    this.text,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.9,
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: FlatButton(
            onPressed: onPress,
            color: primaryColor,
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 22,
                color: whiteColor,
                fontFamily: "Poppins-SemiBold",
              ),
            )),
      ),
    );
  }
}
