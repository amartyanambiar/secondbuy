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
  int _selectedIndex = 3;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Explore',
      style: optionStyle,
    ),
    Text(
      'Index 2: Post',
      style: optionStyle,
    ),
    Text(
      'Index 3: Account',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 3) {
        Navigator.pop(context);
        Navigator.pushNamed(context, 'secondbuy/Settings');
      }
      if (_selectedIndex == 0) {
        Navigator.pop(context);
        Navigator.pushNamed(context, 'secondbuy/home');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.green),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.explore, color: Colors.green),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.camera, color: Colors.green),
              label: 'Post',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_box, color: Colors.green),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green[800],
          onTap: _onItemTapped,
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
