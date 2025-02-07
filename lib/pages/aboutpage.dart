import 'package:flutter/material.dart';
import 'package:esdada/components/toggle_theme_button.dart';
import 'package:esdada/components/application_drawer.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
          backgroundColor: colorScheme.primary,
          title: Text("About"),
          actions: [
            ToggleThemeButton(),
          ],
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          )),
      body: Center(
        child: FloatingActionButton(onPressed: () {}),
      ),
      drawer: ApplicationDrawer(),
    );
  }
}
