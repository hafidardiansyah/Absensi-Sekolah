import 'package:flutter/material.dart';
import 'package:absensi_sekolah/screens/master.dart';
import 'package:absensi_sekolah/screens/come_in.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class AbsentDetails extends StatefulWidget {
  @override
  _AbsentDetailsState createState() => _AbsentDetailsState();
}

class _AbsentDetailsState extends State<AbsentDetails>
    with SingleTickerProviderStateMixin {
  final colors = [Colors.blue, Colors.green, Colors.yellow, Colors.red];
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
        "Masuk",
        style: TextStyle(
            color: blackColor, fontSize: 18, fontFamily: "Poppins-Medium"),
      ),
    ),
    Tab(
      child: Text(
        "Telat",
        style: TextStyle(
            color: blackColor, fontSize: 18, fontFamily: "Poppins-Medium"),
      ),
    ),
    Tab(
      child: Text(
        "Izin",
        style: TextStyle(
            color: blackColor, fontSize: 18, fontFamily: "Poppins-Medium"),
      ),
    ),
    Tab(
      child: Text(
        "Tidak Masuk",
        style: TextStyle(
            color: blackColor, fontSize: 18, fontFamily: "Poppins-Medium"),
      ),
    ),
  ];

  final _itemTv = [
    ComeIn(),
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
            preferredSize: Size.fromHeight(tb().preferredSize.height),
            child: Container(
                width: double.infinity, color: whiteColor, child: tb())),
        title: Text(
          "Detail absen",
          style: TextStyle(
            fontSize: 24,
            color: blackColor,
            fontFamily: "Poppins-SemiBold",
          ),
        ),
        elevation: 0,
        leadingWidth: 90,
        centerTitle: true,
        toolbarHeight: 148,
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
      body: tv(),
    );
  }
}
