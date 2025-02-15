import 'package:flutter/material.dart';

class ConnectionInfoBoxTextbox extends StatelessWidget {
  const ConnectionInfoBoxTextbox(
      {super.key,
      required this.placeholder,
      this.isPassword = false,
      required this.icon});

  final String placeholder;
  final bool isPassword;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;

    return TextField(
      obscureText: isPassword,
      enableSuggestions: !isPassword,
      autocorrect: !isPassword,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        iconColor: colorScheme.onSurface,
        labelText: placeholder,
        border: OutlineInputBorder(),
        icon: icon,
      ),
      style: textTheme.bodyLarge,
    );
  }
}
