import 'package:flutter/material.dart';

import '../widgets/circle_button_widget.dart';
import '../ui/design.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: CircleButtonWidget(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: "assets/icons/arrow_left.svg",
            size: 12,
          ),
          title: Text(
            "Masuk akun",
            style: displaySmall.copyWith(color: gray1),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
