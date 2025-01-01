import 'package:flutter/material.dart';

class OrderedListItem extends StatelessWidget {
  final Widget listText;
  final Color bulletColor;
  final String bulletText;

  const OrderedListItem(
      {super.key,
      required this.listText,
      required this.bulletColor,
      required this.bulletText});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 20,
      children: [
        Text(
          "$bulletText. ",
          style: TextStyle(
              color: bulletColor, fontFamily: "OutfitBold", fontSize: 18),
        ),
        Expanded(child: listText)
      ],
    );
  }
}
