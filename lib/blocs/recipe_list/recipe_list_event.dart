part of 'recipe_list_bloc.dart';

abstract class RecipeListEvent extends Equatable {
  const RecipeListEvent();

  @override
  List<Object> get props => [];
}

class FetchRecipesEvent extends RecipeListEvent {
  final List<Recipe> recipes;

  const FetchRecipesEvent({
    required this.recipes,
  });

  @override
  List<Object> get props => [];
}
