import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:device_preview/device_preview.dart';

import 'ui/theme.dart';
import 'screens/getting_started_screen.dart';
import 'routes/routes.dart';

void main() => runApp(
      DevicePreview(
        // enabled: !kReleaseMode,
        builder: (BuildContext context) => MyApp(), // Wrap your app
      ),
    );

// void main() => runApp(MyApp());

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
      home: GettingStartedScreen(),
      routes: routes,
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, //
    );
  }
}
