import 'package:flutter/material.dart';

class ConnectionInfoBoxTextbox extends StatelessWidget {
  const ConnectionInfoBoxTextbox(
      {super.key, required this.placeholder, this.isPassword = false, required this.icon});

  final String placeholder;
  final bool isPassword;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword,
      enableSuggestions: !isPassword,
      autocorrect: !isPassword,
      decoration: InputDecoration(
        labelText: placeholder,
        border: OutlineInputBorder(),
        icon: icon
      ),
    );
  }
}
