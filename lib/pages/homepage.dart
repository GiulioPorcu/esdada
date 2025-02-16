import 'package:esdada/components/c_app_bar.dart';
import 'package:esdada/components/toggle_theme_button.dart';
import 'package:esdada/components/connection_info.dart';
import 'package:flutter/material.dart';
import 'package:esdada/components/c_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "Home", actions: [ToggleThemeButton()]),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ConnectionInfoBox(),
              Expanded(
                child: SizedBox.shrink(),
              ),
            ]),
      ),
      drawer: CDrawer(),
    );
  }
}
