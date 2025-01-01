import 'package:flutter/material.dart';
import 'package:recipe_page/widgets/recipe_description.dart';
import 'package:recipe_page/widgets/recipe_ingredients.dart';
import 'package:recipe_page/widgets/recipe_instructions.dart';
import 'package:recipe_page/widgets/recipe_nutrition.dart';

class RecipeDetails extends StatelessWidget {
  const RecipeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 30,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        RecipeDescription(),
        RecipeIngredients(),
        RecipeInstructions(),
        RecipeNutrition()
      ],
    );
  }
}
