import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:device_preview/device_preview.dart';

import 'constants/theme.dart';
import 'screens/onboarding_screen.dart';

void main() => runApp(
      DevicePreview(
        // enabled: !kReleaseMode,
        builder: (BuildContext context) => MyApp(), // Wrap your app
      ),
    );

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Disable orientation landscape
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData(),
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, // Add the builder here
      home: OnboardingScreen(),
    );
  }
}
