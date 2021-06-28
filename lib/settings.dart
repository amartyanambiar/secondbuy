import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';
import 'package:secondbuy/home_page.dart';

import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool value = false;
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        bottomNavigationBar: FancyBottomNavigation(
          circleColor: Colors.green,
          inactiveIconColor: Colors.black,
          textColor: Colors.green,
          tabs: [
            TabData(
                iconData: Icons.home,
                title: "Home",
                onclick: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => home_page()))),
            // onclick: () => Navigator.of(context).push(
            //     MaterialPageRoute(builder: (context) => home_page()))),
            TabData(iconData: Icons.messenger_rounded, title: "Inbox"),
            TabData(iconData: Icons.camera_alt_rounded, title: "Post"),
            TabData(
                iconData: Icons.account_box,
                title: "Account",
                onclick: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => SettingsScreen()))),
          ],
          initialSelection: 3,
          key: bottomNavigationKey,
          onTabChangedListener: (position) {
            setState(() {
              currentPage = position;
            });
          },
        ),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: 'Transactions',
              tiles: [
                SettingsTile(
                  title: 'Purchases & Sales',
                  leading: Icon(Icons.monetization_on_outlined),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile(
                  title: 'Payment & Deposit Methods',
                  leading: Icon(Icons.wallet_membership_outlined),
                  onPressed: (BuildContext context) {},
                  // onToggle: (bool value) {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
