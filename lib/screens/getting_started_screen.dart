import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../ui/design.dart';
import '../ui/responsive.dart';
import '../widgets/rouded_button_widget.dart';
import 'login_screen.dart';

class GettingStartedScreen extends StatefulWidget {
  @override
  _GettingStartedScreenState createState() => _GettingStartedScreenState();
}

class _GettingStartedScreenState extends State<GettingStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text(
            'Absensi',
            style: displayMedium.copyWith(color: primary),
          ),
        ),
        body: Responsive(
          mobile: _mobile(context),
          tablet: Container(child: Text('This is tablet device')),
          desktop: Container(child: Text('This is desktop device')),
        ),
      ),
    );
  }

  Widget _mobile(BuildContext context) {
    const String _svgImage = 'assets/images/data_intro.svg';
    final Size _size = MediaQuery.of(context).size;

    // print(_size.height);
    // Placeholder(),
    //  (16.0 / 812.0) * _size.height

    return Align(
      alignment: Alignment.bottomCenter,
      child: SingleChildScrollView(
        padding: const EdgeInsets.only(
          bottom: defaultPadding,
          left: defaultPadding,
          right: defaultPadding,
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SvgPicture.asset(
                _svgImage,
                width: _size.width,
              ),
              const SizedBox(height: 16.0),
              Text(
                'Ayo kelola absensi kamu!',
                style: displaySmall.copyWith(color: gray1),
              ),
              const SizedBox(height: 8.0),
              Text(
                'Lebih mudah dan efesien mengelola absensi kamu di sekolah.',
                style: textSmall.copyWith(color: gray2),
              ),
              const SizedBox(height: 24.0),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundedButtonWidget(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                      text: "Daftar",
                      height: 48.0,
                      width: _size.width / 2.4,
                    ),
                    RoundedButtonWidget(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                      text: "Masuk",
                      height: 48.0,
                      width: _size.width / 2.4,
                    ),
                  ]),
              const SizedBox(height: 24.0),
              Text(
                'Dengan menggunakan aplikasi ini, kamu menyetujui Ketentuan Layanan dan Ketentuan Privasi.',
                style: textXSmall.copyWith(color: gray2),
              ),
            ]),
      ),
    );
  }
}
