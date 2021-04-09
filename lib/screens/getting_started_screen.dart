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
            'Logo',
            style: displaySmall.copyWith(color: primary),
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
    final Size _size = MediaQuery.of(context).size;

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
                gettingStartedImage,
                width: _size.width,
              ),
              SizedBox(height: spacingHeight(24.0, _size.height)),
              Text(
                'Ayo kelola absensi kamu!',
                style: displaySmall.copyWith(color: gray1),
              ),
              SizedBox(height: spacingHeight(8.0, _size.height)),
              Text(
                'Lebih mudah dan efesien mengelola absensi kamu di sekolah.',
                style: textSmall.copyWith(color: gray2),
              ),
              SizedBox(height: spacingHeight(24.0, _size.height)),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RoundedButtonWidget(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                      text: "Daftar",
                      height: 50.0,
                      width: _size.width / 2.4,
                      textStyle: textXLarge.copyWith(color: white),
                    ),
                    RoundedButtonWidget(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginScreen.routeName);
                      },
                      text: "Masuk",
                      height: 50.0,
                      width: _size.width / 2.4,
                      textStyle: textXLarge.copyWith(color: white),
                    ),
                  ]),
              SizedBox(height: spacingHeight(24.0, _size.height)),
              Text(
                'Dengan menggunakan aplikasi ini, kamu menyetujui Ketentuan Layanan dan Ketentuan Privasi.',
                style: textXSmall.copyWith(color: gray2),
              ),
            ]),
      ),
    );
  }
}
