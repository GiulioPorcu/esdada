import 'package:esdada/components/widget_background.dart';
import 'package:esdada/components/connection_info_textbox.dart';
import 'package:flutter/material.dart';

class ConnectionInfoBox extends StatelessWidget {
  const ConnectionInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    double spacing = 16;

    return WidgetBackground(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(spacing),
            alignment: Alignment.centerLeft,
            child: Text(
              "Connection Overview",
              style: textTheme.headlineLarge,
            ),
          ),
          Container(
            padding: EdgeInsets.all(spacing),
            child: Column(
              children: [
                ConnectionInfoBoxTextbox(
                  placeholder: "Base URL",
                  icon: Icon(
                    Icons.cloud_outlined,
                  ),
                ),
                SizedBox(height: spacing),
                ConnectionInfoBoxTextbox(
                  placeholder: "User Name",
                  icon: Icon(Icons.person),
                ),
                SizedBox(height: spacing),
                ConnectionInfoBoxTextbox(
                  placeholder: "Password",
                  isPassword: true,
                  icon: Icon(Icons.password),
                ),
                SizedBox(height: spacing),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(spacing / 2),
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Manage profiles",
                          style: textTheme.labelSmall,
                        ),
                      ),
                    ),
                    Text(
                      "|",
                      style: textTheme.bodySmall,
                    ),
                    Container(
                      padding: EdgeInsets.all(spacing / 2),
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Load profile",
                          style: textTheme.labelSmall,
                        ),
                      ),
                    ),
                    Text(
                      "|",
                      style: textTheme.bodySmall,
                    ),
                    Container(
                      padding: EdgeInsets.all(spacing / 2),
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Save profile",
                          style: textTheme.labelSmall,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SizedBox.shrink(),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Test connection",
                        style: textTheme.labelSmall,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(spacing),
            alignment: Alignment.centerLeft,
            child: Text(
              "This application is the foundation of a new frontend used for SData.",
            ),
          ),
        ],
      ),
    );
  }
}
