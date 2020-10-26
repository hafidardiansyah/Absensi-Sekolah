import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:absensi_sekolah/screens/master.dart';
import 'package:absensi_sekolah/utilities/constants.dart';
import 'package:absensi_sekolah/components/or_divider.dart';
import 'package:absensi_sekolah/components/social_icon.dart';
import 'package:absensi_sekolah/screens/school_list.dart';
import 'package:absensi_sekolah/components/rounded_button_v2.dart';
import 'package:absensi_sekolah/components/rounded_input_field.dart';
import 'package:absensi_sekolah/components/rounded_password_field.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          "Masuk akun",
          style: TextStyle(
            fontSize: 24,
            color: blackColor,
            fontFamily: "Poppins-SemiBold",
          ),
        ),
        elevation: 0,
        leadingWidth: 90,
        centerTitle: true,
        toolbarHeight: 100,
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
                  return SchoolList();
                }));
              },
            ),
          )),
        ),
      ),
      body: Container(
        height: size.height,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.02,
              ),
              SvgPicture.asset(
                "assets/images/secure_data.svg",
                width: size.width * 0.8,
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              RoundedInputField(
                color: primaryColor,
                hintColor: lightColor,
                onChanged: (value) {},
                conColor: superLightColor,
                hintText: "Masukkan email kamu!",
                icon: Icons.supervised_user_circle,
              ),
              RoundedPasswordField(
                conColor: superLightColor,
                onChanged: (value) {},
              ),
              RoundedButtonV2(
                onPress: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return Master();
                  }));
                },
                text: "Masuk",
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocialIcon(
                    icon: "assets/icons/google.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
