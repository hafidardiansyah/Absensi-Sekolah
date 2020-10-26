import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/layout.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class RoundedProfileButton extends StatelessWidget {
  final String desc;
  final String title;
  final Object image;
  final Function onTap;

  const RoundedProfileButton({
    Key key,
    this.desc,
    this.image,
    this.title,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Container(
      width: SizeConfig.screenWidth * 0.8,
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: greyColor, borderRadius: BorderRadius.circular(30)),
      child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
        CircleAvatar(backgroundImage: image),
        SizedBox(width: 10),
        GestureDetector(
          onTap: onTap,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: TextStyle(
                    color: blackColor,
                    fontFamily: "Poppins-Medium",
                    fontSize: SizeConfig.blockVertical * 2,
                  )),
              Text(desc,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: grey2Color,
                    fontFamily: "Poppins-Regular",
                    fontSize: SizeConfig.blockVertical * 1.5,
                  )),
            ],
          ),
        ),
      ]),
    );
  }
}
