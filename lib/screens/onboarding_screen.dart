import 'package:absensi_sekolah/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/design.dart';
import '../constants/responsive.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Absensi',
            style: displayMedium.copyWith(color: primary),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 0,
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

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SvgPicture.asset(
            _svgImage,
            width: _size.width,
          ),
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
          ButtonWidget(
            onPressed: () {},
            text: "Lanjut",
            minimumSize: 50,
          ),
          const SizedBox(height: 24.0),
          Text(
            'Dengan menggunakan aplikasi ini, kamu menyetujui Ketentuan Layanan dan Ketentuan Privasi.',
            style: textXSmall.copyWith(color: gray2),
          ),
        ],
      ),
    );
  }
}
