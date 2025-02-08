import 'package:esdada/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:esdada/components/custom_drawer.dart';

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
        child: FloatingActionButton(onPressed: () {}),
      ),
      drawer: CDrawer(),
    );
  }
}