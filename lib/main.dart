// @dart=2.9
import 'package:flutter/material.dart';
import 'package:secondbuy/bar/navbar.dart';
import 'package:secondbuy/home_page.dart';
import 'package:secondbuy/signup_page.dart';

import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: home_page(),
      routes: {
        '/home': (context) => home_page(),
        'secondbuy/Login': (context) => Login(),
        'secondbuy/SignUp': (context) => SignUp(),
      },
    );
  }
}
