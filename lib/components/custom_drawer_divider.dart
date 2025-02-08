import 'package:flutter/material.dart';

class CDrawerDivider extends StatelessWidget {
  const CDrawerDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      color: Colors.grey,
      thickness: 1,
      indent: 20,
      endIndent: 20,
    );
  }
}
