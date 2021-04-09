import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../ui/design.dart';
import '../ui/responsive.dart';
import '../widgets/rouded_button_widget.dart';
import '../widgets/circle_button_widget.dart';

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
          leadingWidth: 80,
          leading: Padding(
            padding: const EdgeInsets.all(4.0),
            child: CircleButtonWidget(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: 'assets/icons/arrow_left.svg',
              size: 6,
            ),
          ),
          title: Text(
            'Masuk akun',
            style: displaySmall.copyWith(color: gray1),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.only(
            bottom: defaultPadding,
            left: defaultPadding,
            right: defaultPadding,
          ),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                SizedBox(height: spacingHeight(60.0, _size.height)),
                SvgPicture.asset(
                  loginImage,
                  width: _size.width,
                ),
                SizedBox(height: spacingHeight(60.0, _size.height)),
                TextFormField(
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
                ),
                SizedBox(height: spacingHeight(12.0, _size.height)),
                TextFormField(
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
                      return 'Password minimal 6 karakter';
                    }
                    return null;
                  },
                ),
                SizedBox(height: spacingHeight(24.0, _size.height)),
                RoundedButtonWidget(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      print('oke');
                    }
                  },
                  text: 'Masuk',
                  height: 50.0,
                  width: double.infinity,
                  textStyle: textXLarge.copyWith(color: white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
