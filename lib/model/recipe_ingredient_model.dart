import 'package:e_fridge/model/ingredient_model.dart';

class RecipeIngredient {
  final String id;
  final Ingredient ingredient;
  final double quantity;
  final String? measure;

  RecipeIngredient({
    required this.id,
    required this.ingredient,
    required this.quantity,
    this.measure,
  });
}
