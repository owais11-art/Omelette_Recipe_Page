import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:recipe_page/res/app_colors.dart';
import 'package:recipe_page/screens/recipe_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.white, statusBarBrightness: Brightness.dark));
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: AppColors.light,
          body: const RecipeScreen(),
        ),
      ),
    );
  }
}
