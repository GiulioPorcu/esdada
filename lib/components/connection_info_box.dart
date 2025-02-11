import 'package:esdada/components/connection_info_box_textbox.dart';
import 'package:flutter/material.dart';

class ConnectionInfoBox extends StatelessWidget {
  const ConnectionInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double spacing = 16;

    return Padding(
      padding: EdgeInsets.all(spacing * 2),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(spacing),
          color: Colors.grey.shade400,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(spacing),
              alignment: Alignment.centerLeft,
              child: Text("Connection Info", style: textTheme.headlineMedium),
            ),
            Container(
              padding: EdgeInsets.all(spacing),
              child: Column(
                children: [
                  ConnectionInfoBoxTextbox(placeholder: "Base URL"),
                  SizedBox(height: spacing),
                  ConnectionInfoBoxTextbox(placeholder: "User Name"),
                  SizedBox(height: spacing),
                  ConnectionInfoBoxTextbox(
                    placeholder: "Password",
                    isPassword: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
