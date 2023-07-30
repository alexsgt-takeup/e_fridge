class RecipeIngredient {
  final String id;
  final String ingredient;
  final double quantity;
  final String? measure;

  RecipeIngredient({
    required this.id,
    required this.ingredient,
    required this.quantity,
    this.measure,
  });
}
