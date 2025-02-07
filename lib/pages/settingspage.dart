import 'package:flutter/material.dart';
import 'package:esdada/components/toggle_theme_button.dart';
import 'package:esdada/components/wifi_reminder_drawer.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: colorScheme.primary,
          title: Text("Settings"),
          actions: [
            ToggleThemeButton(),
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          )),
      body: Center(
        child: FloatingActionButton(onPressed: () {}),
      ),
      drawer: WifiReminderDrawer(),
    );
  }
}
