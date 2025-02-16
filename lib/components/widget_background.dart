import 'package:flutter/material.dart';

class WidgetBackground extends StatelessWidget {
  const WidgetBackground({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    double spacing = 16;
    ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Padding(
      padding: EdgeInsets.all(spacing * 2),
      child: Ink(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(spacing),
            color: colorScheme.surfaceDim,
          ),
          child: child),
    );
  }
}
