import 'package:absensi_sekolah/screens/example.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../ui/design.dart';
import '../ui/responsive.dart';
import '../widgets/rouded_button_widget.dart';
import '../screens/getting_started_screen.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = '/login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Masuk akun',
            style: displaySmall.copyWith(color: gray1),
          ),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: spacingWidth(defaultPadding, _size.width),
              left: spacingWidth(defaultPadding, _size.width),
              right: spacingWidth(defaultPadding, _size.width),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[
                  AspectRatio(
                    aspectRatio: 3 / 2,
                    child: SvgPicture.asset(
                      loginImage,
                      width: _size.width,
                    ),
                  ),
                  SizedBox(height: spacingHeight(36.0, _size.height)),
                  _emailTextFormField(),
                  SizedBox(height: spacingHeight(12.0, _size.height)),
                  _passwordTextFormField(),
                  SizedBox(height: spacingHeight(24.0, _size.height)),
                  _buttonLogin(),
                  SizedBox(height: spacingHeight(24.0, _size.height)),
                  _textRedirectToRegisterScreen(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _emailTextFormField() {
    return TextFormField(
      cursorColor: blue,
      style: textSmall.copyWith(color: gray1),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SvgPicture.asset(
            'assets/icons/profile.svg',
          ),
        ),
        hintText: 'Masukkan NISN Kamu!',
      ),
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      validator: (String? value) {
        if (value!.trim().isEmpty) {
          return 'NISN harus di isi!';
        } else if (value.length < 10) {
          return 'NISN minimum 10 karakter';
        }
        return null;
      },
    );
  }

  Widget _passwordTextFormField() {
    return TextFormField(
      obscureText: true,
      cursorColor: blue,
      style: textSmall.copyWith(color: gray1),
      decoration: InputDecoration(
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SvgPicture.asset(
            'assets/icons/lock.svg',
          ),
        ),
        suffixIcon: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: SvgPicture.asset(
            'assets/icons/hide.svg',
            color: gray1,
          ),
        ),
        hintText: 'Masukkan password kamu!',
      ),
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      validator: (String? value) {
        if (value!.trim().isEmpty) {
          return 'Password harus di isi!';
        } else if (value.length < 6) {
          return 'Password minimum 6 karakter';
        }
        return null;
      },
    );
  }

  Widget _buttonLogin() {
    return RoundedButtonWidget(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Example()));
      },
      text: 'Masuk',
      height: 50.0,
      width: double.infinity,
      textStyle: textXLarge.copyWith(color: white),
    );
  }

  Widget _textRedirectToRegisterScreen() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          'Belum punya akun? ',
          style: textSmall.copyWith(color: gray3),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context, GettingStartedScreen.routeName);
          },
          child: Text(
            'Daftar',
            style: textSmall.copyWith(color: gray2),
          ),
        ),
        Text(
          ' dulu!',
          style: textSmall.copyWith(color: gray3),
        ),
      ],
    );
  }
}
