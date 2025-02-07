import 'package:esdada/components/application_drawer.dart';
import 'package:flutter/material.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _AboutPageState();
}

class _AboutPageState extends State<CreatePage> {
  @override
  Widget build(BuildContext context) {

    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
appBar: AppBar(
          backgroundColor: colorScheme.primary,
          title: Text("Create new entity..."),
          actions: [
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
