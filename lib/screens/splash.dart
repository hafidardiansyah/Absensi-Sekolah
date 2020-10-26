import 'dart:async';
import 'package:flutter/material.dart';
import 'package:absensi_sekolah/screens/intro.dart';
import 'package:absensi_sekolah/utilities/constants.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 3);
    return Timer(duration, () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) {
          return Intro();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: superLightColor,
      body: Center(
        child: Image.asset("assets/images/ig2.png"),
      ),
    );
  }
}
