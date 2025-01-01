import 'package:flutter/material.dart';
import 'package:recipe_page/res/app_colors.dart';
import 'package:recipe_page/widgets/nutrition_table.dart';
import 'package:recipe_page/widgets/paragraph.dart';

class RecipeNutrition extends StatelessWidget {
  const RecipeNutrition({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> nutritionList = [
      {'nutritionName': 'Calories', 'nutritionQuantity': '277kcal'},
      {'nutritionName': 'Carbs', 'nutritionQuantity': '0g'},
      {'nutritionName': 'Protein', 'nutritionQuantity': '20g'},
      {'nutritionName': 'Fat', 'nutritionQuantity': '22g'},
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      spacing: 30,
      children: [
        Text(
          "Nutrition",
          style: TextStyle(
              fontFamily: "YoungSerif",
              fontSize: 30,
              color: AppColors.boldBrown),
        ),
        Paragraph(
            text:
                "The table below shows nutritional values per serving without the additional fillings."),
        NutritionTable(nutritionList: nutritionList)
      ],
    );
  }
}
