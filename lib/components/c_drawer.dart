import 'package:esdada/components/c_drawer_item.dart';
import 'package:esdada/components/c_divider.dart';
import 'package:esdada/components/c_drawer_title_area.dart';
import 'package:esdada/pages/createpage.dart';
import 'package:flutter/material.dart';
import 'package:esdada/pages/aboutpage.dart';
import 'package:esdada/pages/homepage.dart';
import 'package:esdada/pages/settingspage.dart';

class CDrawer extends StatelessWidget {
  const CDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CDrawerTitleArea(
              titleImage: Image.asset("assets/images/icon.png").image,
              title: "SData Query Tool",
            ),
            Column(
              children: [
                CDrawerItem(
                  text: "Home",
                  leadingIcon: Icon(Icons.home),
                  navigationTarget: HomePage(),
                ),
                CDivider(),
                CDrawerItem(
                    text: "Create",
                    leadingIcon: Icon(Icons.add),
                    navigationTarget: CreatePage()),
                CDrawerItem(
                  text: "Get",
                  leadingIcon: Icon(Icons.read_more),
                  navigationTarget: CreatePage(),
                ),
                CDrawerItem(
                  text: "Update",
                  leadingIcon: Icon(Icons.refresh),
                  navigationTarget: CreatePage(),
                ),
                CDrawerItem(
                  text: "Delete",
                  leadingIcon: Icon(Icons.delete),
                  navigationTarget: CreatePage(),
                ),
                CDrawerItem(
                  text: "Business rule",
                  leadingIcon: Icon(Icons.rule),
                  navigationTarget: CreatePage(),
                ),
                CDivider(),
                CDrawerItem(
                  text: "Gitlab Repository",
                  leadingIcon: Icon(Icons.code),
                  navigationTarget: SettingsPage(),
                ),
                CDrawerItem(
                  text: "Settings",
                  leadingIcon: Icon(Icons.settings),
                  navigationTarget: SettingsPage(),
                ),
                CDrawerItem(
                  text: "About",
                  leadingIcon: Icon(Icons.person),
                  navigationTarget: AboutPage(),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
