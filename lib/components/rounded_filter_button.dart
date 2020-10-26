import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class RoundedFilterButton extends StatelessWidget {
  final Function onTap;
  final double allSize;

  RoundedFilterButton({
    Key key,
    this.onTap,
    this.allSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double newWidtSize = allSize * 5.6;
    final double newHeightSize = allSize * 2.5;
    final double newIconSize = allSize + 6;

    return Material(
      color: superLightColor,
      borderRadius: BorderRadius.circular(30),
      child: InkWell(
        onTap: onTap,
        splashColor: primaryColor,
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: size.width * 0 + newWidtSize,
          height: size.height * 0 + newHeightSize,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.filter_list, color: primaryColor, size: newIconSize),
              Text(
                "Filter",
                style: TextStyle(
                  fontSize: allSize,
                  color: blackColor,
                  fontFamily: "Poppins-Medium",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
