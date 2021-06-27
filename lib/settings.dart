import 'package:flutter/material.dart';
import 'package:flutter_launcher_icons/xml_templates.dart';

import 'package:settings_ui/settings_ui.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // bottomNavigationBar: NavBar(),
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
