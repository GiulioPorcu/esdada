import 'package:esdada/components/c_app_bar.dart';
import 'package:esdada/components/c_drawer.dart';
import 'package:esdada/components/connection_info.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CAppBar(title: "Create", actions: []),
      body: Center(
          child: Column(children: [
        ConnectionInfoBox(),
        Expanded(
          child: SizedBox.shrink(),
        )
      ])),
      drawer: CDrawer(),
    );
  }
}
