import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/screens/sign_in.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:solid_bottom_sheet/solid_bottom_sheet.dart';
import 'package:absensi_sekolah/components/rounded_filter_button.dart';
import 'package:absensi_sekolah/components/rounded_search_field.dart';
import 'package:absensi_sekolah/components/rounded_selection_button.dart';

class SchoolList extends StatefulWidget {
  @override
  _SchoolListState createState() => _SchoolListState();
}

class _SchoolListState extends State<SchoolList> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: lightColor,
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset("assets/images/sun.svg"),
          ),
          Positioned(
              left: -1502,
              top: 150,
              child: SvgPicture.asset(
                "assets/images/house.svg",
                width: 2000,
              )),
          Container(
            margin: EdgeInsets.symmetric(vertical: size.height * 0.05),
            width: double.infinity,
            child: Column(
              children: [
                Text(
                  "Pilih sekolah kamu!",
                  style: TextStyle(
                    fontSize: 24,
                    color: blackColor,
                    fontFamily: "Poppins-Bold",
                  ),
                ),
                RoundedSearchField(
                  icon: Icons.search,
                  color: primaryColor,
                  conColor: whiteColor,
                  hintColor: grey4Color,
                  onChanged: (value) {},
                  hintText: "Masukkan nama sekolah!",
                ),
              ],
            ),
          ),
        ],
      ),
      bottomSheet: SolidBottomSheet(
          headerBar: Container(
            height: 30,
            color: whiteColor,
            child: Align(
              alignment: Alignment.topCenter,
              child: Icon(
                Icons.minimize,
                color: blackColor,
              ),
            ),
          ),
          showOnAppear: true,
          body: Container(
              color: whiteColor,
              width: double.infinity,
              padding: EdgeInsets.only(left: 20, right: 20, top: 10),
              child: SingleChildScrollView(
                  child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Daftar sekolah",
                      style: TextStyle(
                        fontSize: 20,
                        color: blackColor,
                        fontFamily: "Poppins-Medium",
                      ),
                    ),
                    RoundedFilterButton(
                      allSize: 14,
                      onTap: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: size.height * 0.015,
                ),
                RoundedSelectionButton(
                  allSize: 17,
                  desc: "Kec. Kepanjen, Malang,",
                  icon: Icons.school,
                  onTap: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) {
                      return SignIn();
                    }));
                  },
                  title: "SMKN 1 Kepanjen",
                ),
                RoundedSelectionButton(
                  allSize: 17,
                  desc: "Kec. Kepanjen, Malang,",
                  onTap: () {},
                  title: "SMAN 1 Kepanjen",
                  icon: Icons.school,
                ),
              ])))),
    );
  }
}
