import 'package:flutter/material.dart';

class FoodRecipesPage extends StatefulWidget {
  const FoodRecipesPage({super.key});

  @override
  State<FoodRecipesPage> createState() => _FoodRecipesPageState();
}

class _FoodRecipesPageState extends State<FoodRecipesPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder(
      child: Center(
        child: Text("food recipes page"),
      ),
    );
  }
}
