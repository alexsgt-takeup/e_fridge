import 'package:e_fridge/pages/recipe_detail.dart';
import 'package:flutter/material.dart';

import '../model/recipe_model.dart';

class RecipeTile extends StatelessWidget {
  final Recipe recipe;

  const RecipeTile({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => RecipeDetails(recipe: recipe))));
      },
      child: Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.lightBlue,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
              "${recipe.name} pour ${recipe.personnQuantity} personne(s)")),
    );
  }
}
