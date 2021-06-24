import 'package:flutter/material.dart';
import 'package:secondbuy/bar/navbar.dart';
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
        bottomNavigationBar: NavBar(),
        body: SettingsList(
          sections: [
            SettingsSection(
              title: 'Section',
              tiles: [
                SettingsTile(
                  title: 'Language',
                  subtitle: 'English',
                  leading: Icon(Icons.language),
                  onPressed: (BuildContext context) {},
                ),
                SettingsTile.switchTile(
                  title: 'Use fingerprint',
                  leading: Icon(Icons.fingerprint),
                  switchValue: value,
                  onToggle: (bool value) {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
