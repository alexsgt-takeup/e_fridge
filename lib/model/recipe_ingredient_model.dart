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

  // RecipeIngredient fromMap(Map<String, dynamic> data) {
  //   return RecipeIngredient(id: data[], recipeId: data[], ingredient: data[], quantity: data[]);
  // }

  // Map<String, dynamic> toMap() {
  //   return {};
  // }
}
