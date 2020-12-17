import 'package:flutter/material.dart';
import 'package:absensi_sekolah/screens/master.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class ProfileStudent extends StatefulWidget {
  @override
  _ProfileStudentState createState() => _ProfileStudentState();
}

class _ProfileStudentState extends State<ProfileStudent>
    with SingleTickerProviderStateMixin {
  final colors = [
    Colors.blue,
    Colors.green,
    Colors.yellow,
    Colors.orange,
    Colors.red,
    Colors.purple
  ];
  Color indicatorColor;
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _itemTb.length, vsync: this)
      ..addListener(() {
        setState(() {
          indicatorColor = colors[_controller.index];
        });
      });
    indicatorColor = colors[0];
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  final List<Tab> _itemTb = <Tab>[
    Tab(
      child: Text(
        "Senin",
        style: TextStyle(
            color: blackColor, fontSize: 18, fontFamily: "Poppins-Medium"),
      ),
    ),
    Tab(
      child: Text(
        "Selasa",
        style: TextStyle(
            color: blackColor, fontSize: 18, fontFamily: "Poppins-Medium"),
      ),
    ),
    Tab(
      child: Text(
        "Rabu",
        style: TextStyle(
            color: blackColor, fontSize: 18, fontFamily: "Poppins-Medium"),
      ),
    ),
    Tab(
      child: Text(
        "Kamis",
        style: TextStyle(
            color: blackColor, fontSize: 18, fontFamily: "Poppins-Medium"),
      ),
    ),
    Tab(
      child: Text(
        "Jum'at",
        style: TextStyle(
            color: blackColor, fontSize: 18, fontFamily: "Poppins-Medium"),
      ),
    ),
  ];

  final _itemTv = [
    Center(
        child: Text(
      "1",
      style: TextStyle(fontSize: 40),
    )),
    Center(
        child: Text(
      "2",
      style: TextStyle(fontSize: 40),
    )),
    Center(
        child: Text(
      "3",
      style: TextStyle(fontSize: 40),
    )),
    Center(
        child: Text(
      "2",
      style: TextStyle(fontSize: 40),
    )),
    Center(
        child: Text(
      "3",
      style: TextStyle(fontSize: 40),
    )),
  ];

  TabBar tb() {
    return TabBar(
      controller: _controller,
      isScrollable: true,
      indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 3.0, color: indicatorColor),
          insets: EdgeInsets.symmetric(horizontal: 20.0)),
      tabs: _itemTb,
    );
  }

  TabBarView tv() {
    return TabBarView(
      controller: _controller,
      children: _itemTv,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: PreferredSize( 
            preferredSize: Size.fromHeight(50),
            child: Column(children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                CircleAvatar(
                  radius: 65,
                  backgroundColor: lightColor,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/profile.png"),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hafid ardiansyah",
                      style: TextStyle(
                        fontSize: 20,
                        color: blackColor,
                        fontFamily: "Poppins-Medium",
                      ),
                    ),
                    Text(
                      "Siswa, XII RPL 3",
                      style: TextStyle(
                        fontSize: 16,
                        color: blackColor,
                        fontFamily: "Poppins-Regular",
                      ),
                    ),
                  ],
                )
              ]),
              PreferredSize(
                  preferredSize: Size.fromHeight(tb().preferredSize.height),
                  child: Container(
                      width: double.infinity, color: whiteColor, child: tb())),
            ]),
          ),
          title: Text(
            "Profile",
            style: TextStyle(
              fontSize: 24,
              color: blackColor,
              fontFamily: "Poppins-SemiBold",
            ),
          ),
          elevation: 0,
          leadingWidth: 90,
          centerTitle: true,
          toolbarHeight: 278,
          backgroundColor: whiteColor,
          leading: Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            child: ClipOval(
                child: Material(
              color: primaryColor, // button color
              child: InkWell(
                splashColor: darkColor, // inkwell color
                child: SizedBox(
                  child: Icon(
                    Icons.navigate_before,
                    color: whiteColor,
                    size: 32,
                  ),
                ),
                onTap: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return Master();
                  }));
                },
              ),
            )),
          ),
        ),
        body: tv());
  }
}
