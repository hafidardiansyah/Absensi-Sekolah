import 'package:absensi_sekolah/components/rounded_filter_button.dart';
import 'package:absensi_sekolah/components/rounded_selection_button.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:flutter/material.dart';

class ComeIn extends StatefulWidget {
  @override
  _ComeInState createState() => _ComeInState();
}

class _ComeInState extends State<ComeIn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int number = 25;

    return Container(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      height: size.height,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Row(children: [
                Text("Masuk ",
                    style: TextStyle(
                      fontSize: 18,
                      color: blackColor,
                      fontFamily: "Poppins-Medium",
                    )),
                Text(number.toString(),
                    style: TextStyle(
                      fontSize: 18,
                      color: primaryColor,
                      fontFamily: "Poppins-SemiBold",
                    )),
                Text(" x",
                    style: TextStyle(
                      fontSize: 18,
                      color: blackColor,
                      fontFamily: "Poppins-Medium",
                    )),
              ])),
              RoundedFilterButton(
                allSize: 16,
                onTap: () {},
              )
            ],
          ),
          SizedBox(height: size.height * 0.02),
          RoundedSelectionButton(
            allSize: 17,
            desc: "Desc",
            title: "title",
            icon: Icons.location_history,
            onTap: () {},
          ),
          RoundedSelectionButton(
            allSize: 17,
            desc: "Desc",
            title: "title",
            icon: Icons.location_history,
            onTap: () {},
          ),
          RoundedSelectionButton(
            allSize: 17,
            desc: "Desc",
            title: "title",
            icon: Icons.location_history,
            onTap: () {},
          ),
          RoundedSelectionButton(
            allSize: 17,
            desc: "Desc",
            title: "title",
            icon: Icons.location_history,
            onTap: () {},
          ),
          RoundedSelectionButton(
            allSize: 17,
            desc: "Desc",
            title: "title",
            icon: Icons.location_history,
            onTap: () {},
          ),
          RoundedSelectionButton(
            allSize: 17,
            desc: "Desc",
            title: "title",
            icon: Icons.location_history,
            onTap: () {},
          ),
          RoundedSelectionButton(
            allSize: 17,
            desc: "Desc",
            title: "title",
            icon: Icons.location_history,
            onTap: () {},
          ),
          RoundedSelectionButton(
            allSize: 17,
            desc: "Desc",
            title: "title",
            icon: Icons.location_history,
            onTap: () {},
          ),
          RoundedSelectionButton(
            allSize: 17,
            desc: "Desc",
            title: "title",
            icon: Icons.location_history,
            onTap: () {},
          ),
          RoundedSelectionButton(
            allSize: 17,
            desc: "Desc",
            title: "title",
            icon: Icons.location_history,
            onTap: () {},
          ),
        ]),
      ),
    );
  }
}
