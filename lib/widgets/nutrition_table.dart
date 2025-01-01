import 'package:flutter/material.dart';
import 'package:recipe_page/res/app_colors.dart';
import 'package:recipe_page/widgets/paragraph.dart';

class NutritionTable extends StatelessWidget {
  final List<Map<String, String>> nutritionList;
  const NutritionTable({super.key, required this.nutritionList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: nutritionList.map((Map<String, String> nutrition) {
        bool isLast =
            nutritionList.last["nutritionName"] == nutrition["nutritionName"];
        return NutritionCell(
          nutritionName: nutrition["nutritionName"]!,
          nutritionQuantity: nutrition["nutritionQuantity"]!,
          isLast: isLast,
        );
      }).toList(),
    );
  }
}

class NutritionCell extends StatelessWidget {
  final String nutritionName;
  final String nutritionQuantity;
  final bool isLast;
  const NutritionCell(
      {super.key,
      required this.nutritionName,
      required this.nutritionQuantity,
      required this.isLast});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color:
                      isLast ? Colors.transparent : AppColors.separatorColor))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Paragraph(text: nutritionName),
          ),
          Expanded(
            child: Text(
              nutritionQuantity,
              style: TextStyle(
                  fontFamily: "OutfitSemiBold",
                  fontSize: 18,
                  color: AppColors.boldBrown),
            ),
          )
        ],
      ),
    );
  }
}
