import 'package:flutter/material.dart';
import 'package:esdada/pages/aboutpage.dart';
import 'package:esdada/pages/homepage.dart';
import 'package:esdada/pages/settingspage.dart';

class WifiReminderDrawer extends StatelessWidget {
  const WifiReminderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Material(
              color: colorScheme.primary,
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  padding: EdgeInsets.only(top: 24, bottom: 24),
                  child: Column(
                    children: [
                      CircleAvatar(
                          radius: 36,
                          backgroundImage:
                              Image.asset("assets/images/icon.png").image),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Wifi Reminder', style: textTheme.headlineLarge),
                    ],
                  ),
                ),
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Icon(Icons.home_outlined),
                  title: Text('Home'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsPage()),
                    );
                  },
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text('About...'),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AboutPage()),
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
