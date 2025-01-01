import 'package:flutter/material.dart';

class UnorderedListItem extends StatelessWidget {
  final Widget listText;
  final Color bulletColor;

  const UnorderedListItem({super.key, required this.listText, required this.bulletColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 20,
      children: [
        Container(
          width: 7,
          height: 7,
          decoration: BoxDecoration(
              color: bulletColor,
              borderRadius: BorderRadius.circular(100)),
        ),
        Expanded(child: listText)
      ],
    );
  }
}
