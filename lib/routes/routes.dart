import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../screens/login_screen.dart';

final Map<String, Widget Function(BuildContext)> routes = {
  LoginScreen.routeName: (BuildContext context) => LoginScreen(),
};
