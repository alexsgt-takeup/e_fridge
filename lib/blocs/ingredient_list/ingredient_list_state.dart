part of 'ingredient_list_bloc.dart';

class IngredientListState extends Equatable {
  final List<Ingredient> ingredients;

  const IngredientListState({
    required this.ingredients,
  });

  @override
  List<Object> get props => [ingredients];

  factory IngredientListState.initial() {
    return IngredientListState(ingredients: List.empty());
  }

  IngredientListState copyWith({
    List<Ingredient>? ingredients,
  }) {
    return IngredientListState(
      ingredients: ingredients ?? this.ingredients,
    );
  }

  @override
  String toString() => 'IngredientListState(ingredients: $ingredients)';
}
