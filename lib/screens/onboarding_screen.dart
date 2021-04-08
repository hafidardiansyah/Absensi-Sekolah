import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

import "../utils/design.dart";
import "../utils/responsive.dart";

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cek", style: displayLarge),
      ),
      body: Responsive(
        mobile: Container(child: Text("This is mobile device")),
        tablet: Container(child: Text("This is tablet device")),
        desktop: Container(child: Text("This is desktop device")),
      ),
    );
  }
}
