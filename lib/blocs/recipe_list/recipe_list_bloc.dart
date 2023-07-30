import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/recipe_model.dart';
import '../../repository/recipe_repository.dart';

part 'recipe_list_event.dart';
part 'recipe_list_state.dart';

class RecipeListBloc extends Bloc<RecipeListEvent, RecipeListState> {
  final RecipeRepository recipeRepository;
  RecipeListBloc({
    required this.recipeRepository,
  }) : super(RecipeListState.initial()) {
    on<FetchRecipesEvent>((event, emit) async {
      emit(
        state.copyWith(
          recipeListStatut: RecipeListStatut.fetching,
        ),
      );
      List<Recipe> recipes = await recipeRepository.getRecipes();
      emit(
        state.copyWith(
          recipeListStatut: RecipeListStatut.fetched,
          recipes: recipes,
        ),
      );
    });
  }
}
