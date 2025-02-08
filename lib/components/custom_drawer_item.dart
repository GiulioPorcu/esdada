import 'package:flutter/material.dart';

class CDrawerItem extends StatelessWidget {
  const CDrawerItem(
      {super.key,
      required this.leadingIcon,
      required this.text,
      required this.navigationTarget});

  final Icon leadingIcon;
  final String text;
  final Widget navigationTarget;

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return ListTile(
        leading: leadingIcon,
        title: Text(
          text,
          style: textTheme.bodyMedium,
        ),
        onTap: () {
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => navigationTarget,
            ),
          );
        });
  }
}
