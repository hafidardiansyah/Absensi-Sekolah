import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class RoundedSelectionButton extends StatelessWidget {
  final String desc;
  final String position;
  final IconData icon;
  final Function onTap;
  final double allSize;

  RoundedSelectionButton({
    Key key,
    this.desc,
    this.icon,
    this.position,
    this.onTap,
    this.allSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double newFontSize = allSize / 1.5;
    final double newHeightContainer = allSize * 3.2;
    final double newIconSize = allSize * 1.6;
    final double newIconButtonSize = allSize * 2.7;

    return Container(
      height: size.height * 0 + newHeightContainer,
      margin: EdgeInsets.symmetric(
        vertical: size.height * 0.005,
      ),
      padding: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(30)),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipOval(
                child: SizedBox(
              width: newIconButtonSize,
              height: newIconButtonSize,
              child: Icon(
                icon,
                color: primaryColor,
                size: newIconSize,
              ),
            )),
            Material(
              child: Container(
                width: size.width * 0.48,
                color: greyColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(position,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: blackColor,
                          fontFamily: "Poppins-Medium",
                          fontSize: allSize,
                        )),
                    Text(desc,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: grey2Color,
                          fontFamily: "Poppins-Regular",
                          fontSize: newFontSize,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
        ClipOval(
            child: Material(
          color: primaryColor, // button color
          child: InkWell(
            splashColor: darkColor, // inkwell color
            child: SizedBox(
              width: newIconButtonSize,
              height: newIconButtonSize,
              child: Icon(
                Icons.navigate_next,
                color: whiteColor,
                size: newIconSize,
              ),
            ),
            onTap: onTap,
          ),
        )),
      ]),
    );
  }
}
