import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class RoundedProfileButton extends StatelessWidget {
  final String name;
  final Object image;
  final String status;
  final Function onTap;
  final Color conColor;

  RoundedProfileButton(
      {Key key, this.image, this.conColor, this.name, this.status, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Align(
      alignment: Alignment.topCenter,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: size.width * 0.9,
          height: size.height * 0.07,
          margin: EdgeInsets.symmetric(
            vertical: 5,
          ),
          padding: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              color: conColor, borderRadius: BorderRadius.circular(30)),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            CircleAvatar(
              radius: 21,
              backgroundColor: grey4Color,
              child: CircleAvatar(
                radius: 20,
                backgroundImage: image,
              ),
            ),
            SizedBox(width: size.width * 0.02),
            Container(
              width: size.width * 0.65,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(name,
                      style: TextStyle(
                        fontSize: 18,
                        color: blackColor,
                        fontFamily: "Poppins-Medium",
                      )),
                  Text(status,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12,
                        color: grey2Color,
                        fontFamily: "Poppins-Regular",
                      )),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
