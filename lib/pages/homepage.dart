import 'package:esdada/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:esdada/components/custom_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "Home", actions: []),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
      drawer: CDrawer(),
    );
  }
}
