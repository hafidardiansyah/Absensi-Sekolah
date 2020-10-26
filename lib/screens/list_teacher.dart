import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/components/rounded_profile_button_v2.dart';
import 'package:absensi_sekolah/components/rounded_search_field_v2.dart';

class ListTeacher extends StatefulWidget {
  @override
  _ListTeacherState createState() => _ListTeacherState();
}

class _ListTeacherState extends State<ListTeacher> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: lightColor,
      body: Stack(
        children: [
          Positioned(
              left: -220,
              top: 0,
              child: SvgPicture.asset(
                "assets/images/teacher.svg",
                width: 500,
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: size.height * 0.06),
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "Cari guru kamu!",
                  style: TextStyle(
                    fontSize: 24,
                    color: blackColor,
                    fontFamily: "Poppins-Bold",
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                RoundedSearchFieldV2(
                  icon: Icons.search,
                  color: primaryColor,
                  conColor: whiteColor,
                  hintColor: grey4Color,
                  onChanged: (value) {},
                  hintText: "Masukkan nama guru!",
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: double.infinity,
                height: size.height * 0.65,
                padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: SingleChildScrollView(
                    child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Daftar guru",
                        style: TextStyle(
                          fontSize: 20,
                          color: blackColor,
                          fontFamily: "Poppins-Medium",
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.015,
                  ),
                  RoundedProfileButtonV2(
                    onTap: () {},
                    conColor: greyColor,
                    name: "Courtney Henry",
                    status: "XI - XII, Web programming",
                    image: AssetImage("assets/images/profile.png"),
                  ),
                  RoundedProfileButtonV2(
                    onTap: () {},
                    conColor: greyColor,
                    name: "Kristin Watson",
                    status: "X, Desain grafis",
                    image: AssetImage("assets/images/profile.png"),
                  ),
                ]))),
          )
        ],
      ),
    );
  }
}
