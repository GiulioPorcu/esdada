import 'package:esdada/components/c_app_bar.dart';
import 'package:esdada/themes/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:esdada/components/c_drawer.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "Settings", actions: []),
      body: Center(
        child: FloatingActionButton(
            child: Text("Toggle theme"),
            onPressed: () {
              Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
            }),
      ),
      drawer: CDrawer(),
    );
  }
}
