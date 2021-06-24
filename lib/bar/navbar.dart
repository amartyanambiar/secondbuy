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
      type: FancyType.FancyV1,
      items: [
        FancyItem(
          textColor: Colors.green,
          title: 'Home',
          icon: Icon(Icons.home, size: 30),
        ),
        FancyItem(
          textColor: Colors.green,
          title: 'Inbox',
          icon: Icon(Icons.messenger_rounded, size: 25),
        ),
        FancyItem(
          textColor: Colors.green,
          title: 'Post',
          icon: Icon(Icons.camera_alt_rounded, size: 28),
        ),
        FancyItem(
          textColor: Colors.green,
          title: 'Account',
          icon: Icon(Icons.account_box, size: 30),
        ),
      ],
      onItemSelected: (index) {
        print(index);

        if (index == 0) {
          Navigator.pushNamed(context, 'secondbuy/home');
        }
        if (index == 1) {
          // Navigator.pushNamed(context, 'secondbuy/');
        }
        if (index == 2) {
          // Navigator.pushNamed(context, 'secondbuy/');
        }
        if (index == 3) {
          Navigator.pushNamed(context, 'secondbuy/Settings');
        }
      },
    );
  }
}
