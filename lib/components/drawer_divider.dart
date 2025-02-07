import 'package:flutter/material.dart';

class DrawerDivider extends StatelessWidget {
  const DrawerDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
        height: 1, color: Colors.grey, thickness: 1, indent: 20, endIndent: 20);
  }
}
