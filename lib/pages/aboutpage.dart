import 'package:esdada/components/c_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:esdada/components/c_drawer.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "About", actions: []),
      body: Center(
        child: FloatingActionButton(onPressed: () {}),
      ),
      drawer: CDrawer(),
    );
  }
}
