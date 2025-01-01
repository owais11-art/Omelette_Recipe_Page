import 'package:flutter/material.dart';
import 'package:recipe_page/res/app_colors.dart';
import 'package:recipe_page/widgets/list_items.dart';
import 'package:recipe_page/widgets/paragraph.dart';

class RecipeIngredients extends StatelessWidget {
  const RecipeIngredients({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, Widget>> ingredientList = [
      {"text": Paragraph(text: "2-3 large eggs")},
      {"text": Paragraph(text: "Salt, to taste")},
      {"text": Paragraph(text: "Pepper, to taste")},
      {"text": Paragraph(text: "1 tablespoon of butter or oil")},
      {
        "text": Paragraph(
            text:
                "Optional fillings: cheese, diced vegetables, cooked meats, herbs")
      }
    ];
    return Container(
      padding: EdgeInsets.only(bottom: 30),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: AppColors.separatorColor, width: 1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Ingredients",
            style: TextStyle(
                fontFamily: "YoungSerif",
                fontSize: 30,
                color: AppColors.boldBrown),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: ListItems(
              'unordered',
              bulletColor: AppColors.boldBrown,
              listItems: ingredientList,
            ),
          )
        ],
      ),
    );
  }
}
