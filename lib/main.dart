// @dart=2.9
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:secondbuy/settings.dart';
import 'package:settings_ui/settings_ui.dart';
import 'package:secondbuy/home_page.dart';
import 'package:secondbuy/signup_page.dart';
import 'package:flutter/rendering.dart';
import 'login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.green,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.grey,
      systemNavigationBarDividerColor: Colors.green,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      // debugShowMaterialGrid: true,

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        platform: TargetPlatform.android,
      ),

      home: AnimatedSplashScreen(
          duration: 3000,
          splash: Image.asset(
            "assets/images/shopping-35594_1280.png",
          ),
          nextScreen: home_page(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white),
      routes: {
        'secondbuy/home': (context) => home_page(),
        'secondbuy/Login': (context) => Login(),
        'secondbuy/SignUp': (context) => SignUp(),
        'secondbuy/Settings': (context) => SettingsScreen(),
      },
    );
  }
}
