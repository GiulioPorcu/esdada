import 'package:esdada/pages/aboutpage.dart';
import 'package:flutter/material.dart';

class CDrawerTitleArea extends StatelessWidget {
  const CDrawerTitleArea(
      {super.key, required this.title, required this.titleImage});

  final ImageProvider titleImage;
  final String title;

  @override
  Widget build(BuildContext context) {
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    TextTheme textTheme = Theme.of(context).textTheme;

    return Material(
      color: colorScheme.surfaceDim,
      child: InkWell(
        onTap: () {Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AboutPage(),
            ),
          );},
        child: Container(
          padding: EdgeInsets.only(top: 24, bottom: 24),
          child: Column(
            children: [
              Text(
                title,
                style: textTheme.headlineLarge?.copyWith(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
