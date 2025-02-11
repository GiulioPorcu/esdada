import 'package:flutter/material.dart';

class CDivider extends StatelessWidget {
  const CDivider({super.key, this.color = Colors.grey});

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: 1,
      color: color,
      thickness: 1,
      indent: 20,
      endIndent: 20,
    );
  }
}
