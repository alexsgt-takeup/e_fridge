import 'recipe_ingredient_model.dart';
import 'recipe_step_model.dart';

class Recipe {
  final String id;
  final String name;
  final String? imgPath;
  final List<RecipeIngredient> ingredients;
  final List<RecipeStep> steps;
  final int numberOfServings;

  Recipe({
    required this.id,
    required this.name,
    this.imgPath,
    required this.ingredients,
    required this.steps,
    required this.numberOfServings,
  });
}
