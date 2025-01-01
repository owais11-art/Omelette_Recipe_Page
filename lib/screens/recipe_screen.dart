import 'package:flutter/material.dart';
import 'package:recipe_page/widgets/hero_image.dart';
import 'package:recipe_page/widgets/recipe_details.dart';

class RecipeScreen extends StatelessWidget {
  const RecipeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        HeroImage(),
        Padding(
          padding: EdgeInsets.all(20),
          child: RecipeDetails(),
        )
      ],
    );
  }
}
