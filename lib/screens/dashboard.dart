import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/screens/absent_details.dart';
import 'package:absensi_sekolah/screens/profile_student.dart';
import 'package:absensi_sekolah/components/donut_pie_chart.dart';
import 'package:absensi_sekolah/components/rounded_profile_button.dart';
import 'package:absensi_sekolah/components/rounded_selection_button.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: lightColor,
        body: Stack(children: [
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset("assets/images/sun.svg"),
          ),
          Positioned(
              left: -2,
              top: size.height * 0.18,
              child: SvgPicture.asset("assets/images/house.svg")),
          Column(
            children: [
              SizedBox(height: size.height * 0.04),
              RoundedProfileButton(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return ProfileStudent();
                  }));
                },
                conColor: whiteColor,
                name: "Hafid",
                status: "Status",
                image: AssetImage("assets/images/ig.png"),
              ),
              SizedBox(height: size.height * 0.02),
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: 350,
                      child: Text("Absensi saya",
                          style: TextStyle(
                            fontSize: 24,
                            color: blackColor,
                            fontFamily: "Poppins-SemiBold",
                          )))),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: lightColor,
                    offset: Offset(0, 10),
                    blurRadius: 30,
                  )
                ], color: whiteColor, borderRadius: BorderRadius.circular(30)),
                width: 350,
                height: 180,
                child: Row(
                  children: [
                    Container(
                        width: 180,
                        height: 180,
                        child: DonutPieChart.withSampleData()),
                    Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 2),
                        width: 160,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Keterangan",
                                  style: TextStyle(
                                      fontFamily: "Poppins-Medium",
                                      fontSize: 14)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.blue,
                                  ),
                                  Text("Masuk",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium",
                                          fontSize: 12)),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.green,
                                  ),
                                  Text("Telat",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium",
                                          fontSize: 12)),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.yellow,
                                  ),
                                  Text("Izin",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium",
                                          fontSize: 12)),
                                  Icon(
                                    Icons.circle,
                                    color: Colors.red,
                                  ),
                                  Text("Tidak masuk",
                                      style: TextStyle(
                                          fontFamily: "Poppins-Medium",
                                          fontSize: 12)),
                                ],
                              ),
                              Material(
                                color: primaryColor,
                                borderRadius: BorderRadius.circular(30),
                                child: InkWell(
                                  onTap: () {
                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) {
                                      return AbsentDetails();
                                    }));
                                  },
                                  splashColor: darkColor,
                                  borderRadius: BorderRadius.circular(30),
                                  child: Container(
                                    height: size.height * 0.05,
                                    width: size.width * 0.4,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Text(
                                          "Detail",
                                          style: TextStyle(
                                            color: whiteColor,
                                            fontFamily: "Poppins-SemiBold",
                                            fontSize: 16,
                                          ),
                                        ),
                                        Icon(
                                          Icons.navigate_next,
                                          color: whiteColor,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ])),
                  ],
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                width: double.infinity,
                height: size.height * 0.45,
                padding: EdgeInsets.only(left: 20, right: 20, top: 30),
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
                        "Pengumuman",
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
                  RoundedSelectionButton(
                    allSize: 17,
                    desc: "14-10-20",
                    onTap: () {},
                    position: "Rapot semester 2",
                    icon: Icons.insert_drive_file,
                  ),
                  RoundedSelectionButton(
                    allSize: 17,
                    desc: "26-06-20",
                    onTap: () {},
                    position: "Surat PKL",
                    icon: Icons.insert_drive_file,
                  ),
                ]))),
          )
        ]));
  }
}
