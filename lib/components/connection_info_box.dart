import 'package:esdada/components/connection_info_box_textbox.dart';
import 'package:esdada/pages/createpage.dart';
import 'package:flutter/material.dart';

class ConnectionInfoBox extends StatelessWidget {
  const ConnectionInfoBox({super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    double spacing = 16;

    return Padding(
      padding: EdgeInsets.all(spacing * 2),
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(spacing),
          color: colorScheme.secondary,
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(spacing),
              alignment: Alignment.centerLeft,
              child: Text(
                "Connection Overview",
                style: textTheme.headlineMedium,
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
            Container(
              padding: EdgeInsets.all(spacing),
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CreatePage(),
                        ),
                      );
                    },
                    child: Text(
                      "Create a new entity...",
                      selectionColor: colorScheme.tertiary,
                      style: textTheme.labelSmall,
                    ),
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
