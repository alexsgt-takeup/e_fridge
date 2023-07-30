part of 'recipe_list_bloc.dart';

enum RecipeListStatut { initial, fetching, fetched }

class RecipeListState extends Equatable {
  final List<Recipe> recipes;
  final RecipeListStatut recipeListStatut;

  const RecipeListState({
    required this.recipes,
    required this.recipeListStatut,
  });

  factory RecipeListState.initial() {
    return const RecipeListState(
        recipes: [], recipeListStatut: RecipeListStatut.initial);
  }
  @override
  List<Object> get props => [recipes, recipeListStatut];

  RecipeListState copyWith({
    List<Recipe>? recipes,
    RecipeListStatut? recipeListStatut,
  }) {
    return RecipeListState(
      recipes: recipes ?? this.recipes,
      recipeListStatut: recipeListStatut ?? this.recipeListStatut,
    );
  }
}
