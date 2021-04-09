import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  const Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  // This isMobile, isTablet, isDesktop
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 650;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 &&
      MediaQuery.of(context).size.width >= 650;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    // This is for return device
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 1100) {
          return desktop;
        }
        if (constraints.maxWidth >= 650) {
          return tablet;
        }
        return mobile;
      },
    );
  }
}

// Spacing
double spacingHeight(double size, double mediaQuerySize) =>
    (size / 812.0) * mediaQuerySize;
double spacingWidth(double size, double mediaQuerySize) =>
    (size / 375.0) * mediaQuerySize;
