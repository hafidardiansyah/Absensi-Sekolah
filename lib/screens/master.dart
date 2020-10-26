import 'package:absensi_sekolah/screens/list_teacher.dart';
import 'package:flutter/material.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/screens/dashboard.dart';
import 'package:qrscan/qrscan.dart' as scanner;
import 'package:absensi_sekolah/components/fab_bottom_app_bar.dart';

class Master extends StatefulWidget {
  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master> {
  int _selectedIndex = 0;

  void _selectedTab(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgetOptions = <Widget>[
    Dashboard(),
    ListTeacher(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await scanner.scan();
            setState(() {});
          },
          tooltip: 'Increment',
          child: Icon(Icons.qr_code_scanner),
          elevation: 2.0,
          splashColor: darkColor),
      bottomNavigationBar: FabBottomAppBar(
        onTabSelected: _selectedTab,
        items: [
          FabBottomAppBarItem(iconData: Icons.dashboard, text: 'Dashboard'),
          FabBottomAppBarItem(
              iconData: Icons.supervised_user_circle_rounded,
              text: "Daftar guru"),
        ],
        notchedShape: CircularNotchedRectangle(),
        color: Colors.blueGrey,
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
