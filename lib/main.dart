import 'package:flutter/material.dart';
import 'package:secondbuy/screens/home/home_screen.dart';
import 'package:secondbuy/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      home: HomeScreen(),
    );
  }
}
