import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/login_screen.dart';
import '../screens/getting_started_screen.dart';

final Map<String, StatefulWidget Function(BuildContext context)> routes = {
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
  GettingStartedScreen.routeName: (BuildContext context) =>
      GettingStartedScreen(),
};
