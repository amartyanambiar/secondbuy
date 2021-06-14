import 'package:flutter/material.dart';
import 'package:fancy_bar/fancy_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return FancyBottomBar(
      type: FancyType.FancyV2,
      items: [
        FancyItem(
          textColor: Colors.orange,
          title: '',
          icon: Icon(Icons.home),
        ),
        FancyItem(
          // textColor: Colors.red,
          title: '',
          icon: Icon(Icons.trending_up),
        ),
        FancyItem(
          textColor: Colors.green,
          title: '',
          icon: Icon(Icons.search),
        ),
        FancyItem(
          textColor: Colors.brown,
          title: '',
          icon: Icon(Icons.settings_accessibility_outlined),
        ),
      ],
      onItemSelected: (index) {
        print(index);

        if (index == 1) {
          Navigator.pushNamed(context, 'secondbuy/Login');
        }
      },
    );
  }
}
