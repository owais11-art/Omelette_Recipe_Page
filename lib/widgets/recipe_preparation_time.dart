import 'package:flutter/material.dart';
import 'package:recipe_page/res/app_colors.dart';
import 'package:recipe_page/widgets/list_items.dart';
import 'package:recipe_page/widgets/rich_paragraph.dart';

class RecipePreparationTime extends StatelessWidget {
  const RecipePreparationTime({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, Widget>> preparationTimeList = [
      {
        "text":
            RichParagraph(bold: "Total:", regular: " Approximately 10 minutes")
      },
      {"text": RichParagraph(bold: "Preparation:", regular: " 5 minutes")},
      {"text": RichParagraph(bold: "Cooking:", regular: " 5 minutes")}
    ];
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: AppColors.preprationBg,
          borderRadius: BorderRadius.circular(8)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Preparation time",
            style: TextStyle(
                fontFamily: "OutfitSemiBold",
                fontSize: 24,
                color: AppColors.preprationHeader),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: ListItems(
              'unordered',
              listItems: preparationTimeList,
              bulletColor: AppColors.preprationHeader,
            ),
          )
        ],
      ),
    );
  }
}
