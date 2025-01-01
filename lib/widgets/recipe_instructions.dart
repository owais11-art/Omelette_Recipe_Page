import 'package:flutter/material.dart';
import 'package:recipe_page/res/app_colors.dart';
import 'package:recipe_page/widgets/list_items.dart';
import 'package:recipe_page/widgets/rich_paragraph.dart';

class RecipeInstructions extends StatelessWidget {
  const RecipeInstructions({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, Widget>> instructionList = [
      {
        "text": RichParagraph(bold: "Beat the eggs:", regular: " In a bowl, beat the eggs with a pinch of salt and pepper until they are well mixed. You can add a tablespoon of water or milk for a fluffier texture.")
      },
      {
        "text": RichParagraph(bold: "Heat the pan:", regular: " Place a non-stick frying pan over medium heat and add butter or oil.")
      },
      {
        "text": RichParagraph(bold: "Cook the omelette:", regular: " Once the butter is melted and bubbling, pour in the eggs. Tilt the pan to ensure the eggs evenly coat the surface")
      },
      {
        "text": RichParagraph(bold: "Add fillings (optional):", regular: " When the eggs begin to set at the edges but are still slightly runny in the middle, sprinkle your chosen fillings over one half of the omelette.")
      },
      {
        "text": RichParagraph(bold: "Fold and serve:", regular: " As the omelette continues to cook, carefully lift one edge and fold it over the fillings. Let it cook for another minute, then slide it onto a plate.")
      },
      {
        "text": RichParagraph(bold: "Enjoy:", regular: " Serve hot, with additional salt and pepper if needed.")
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
            "Instructions",
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
              'ordered',
              bulletColor: AppColors.boldBrown,
              listItems: instructionList,
            ),
          )
        ],
      ),
    );
  }
}