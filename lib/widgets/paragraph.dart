import 'package:flutter/material.dart';
import 'package:recipe_page/res/app_colors.dart';

class Paragraph extends StatelessWidget {
  final String text;

  const Paragraph({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontFamily: "Outfit", fontSize: 18, color: AppColors.text),
    );
  }
}
