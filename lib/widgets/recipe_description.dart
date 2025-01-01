import 'package:flutter/material.dart';
import 'package:recipe_page/res/app_colors.dart';
import 'package:recipe_page/widgets/paragraph.dart';
import 'package:recipe_page/widgets/recipe_preparation_time.dart';

class RecipeDescription extends StatelessWidget {
  const RecipeDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 24,
      children: [
        Text(
          "Simple Omelette Recipe",
          style: TextStyle(
              fontFamily: "YoungSerif", fontSize: 34, color: AppColors.dark),
        ),
        Paragraph(
          text:
              "An easy and quick dish, perfect for any meal. This classic omelette combines beaten eggs cooked to perfection, optionally filled with your choice of cheese, vegetables, or meats.",
        ),
        RecipePreparationTime()
      ],
    );
  }
}
