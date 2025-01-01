import 'package:flutter/material.dart';
import 'package:recipe_page/map_indexed.dart';
import 'package:recipe_page/widgets/ordered_list_item.dart';
import 'package:recipe_page/widgets/unordered_list_item.dart';

class ListItems extends StatelessWidget {
  final List<Map<String, Widget>> listItems;
  final String type;
  final Color bulletColor;

  const ListItems(this.type,
      {super.key, required this.listItems, required this.bulletColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: listItems.mapIndexed((int index, Map<String, Widget> item) {
        return type == 'unordered'
            ? UnorderedListItem(
                listText: item['text']!, bulletColor: bulletColor)
            : OrderedListItem(
                listText: item['text']!,
                bulletColor: bulletColor,
                bulletText: "${index + 1}");
      }).toList(),
    );
  }
}
