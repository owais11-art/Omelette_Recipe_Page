import 'package:flutter/material.dart';
import 'package:recipe_page/res/app_colors.dart';

class RichParagraph extends StatelessWidget {

  final String bold;
  final String regular;

  const RichParagraph({super.key, required this.bold, required this.regular});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: bold,
        style: TextStyle(fontFamily: "OutfitBold", fontSize: 18, color: AppColors.text),
        children: [
          TextSpan(
            text: regular,
            style: TextStyle(fontFamily: "Outfit", fontSize: 18, color: AppColors.text)
          )
        ]
      ),
    );
  }
}