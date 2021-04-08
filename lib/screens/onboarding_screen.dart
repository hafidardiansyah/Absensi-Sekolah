import "package:flutter/material.dart";
import "package:flutter_svg/flutter_svg.dart";

import "../utils/constants.dart";

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("cek", style: displayLarge),
      ),
      body: SizedBox(
        child: SvgPicture.asset("icons/activity.svg"),
      ),
    );
  }
}
