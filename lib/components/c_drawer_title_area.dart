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
      color: colorScheme.primary,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.only(top: 24, bottom: 24),
          child: Column(
            children: [
              CircleAvatar(
                radius: 36,
                backgroundImage: titleImage,
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                title,
                style: textTheme.headlineLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
