import 'package:e_fridge/constants/db_constants.dart';
import 'package:e_fridge/model/recipe_model.dart';
import 'package:sqflite/sqflite.dart';

import '../model/ingredient_model.dart';
import '../model/recipe_ingredient_model.dart';
import '../model/recipe_step_model.dart';

class RecipeRepository {
  final Database database;

  RecipeRepository({
    required this.database,
  });

  final String getRecipesQuery =
      "SELECT * FROM ${DatabaseConstants.recipesTableName}";

  Future<List<Recipe>> get recipes {
    return getRecipes();
  }

  Future<List<Recipe>> getRecipes() async {
    final recipeList = <Recipe>[];
    final recipeQuery = await database.rawQuery(getRecipesQuery);
    for (final recipe in recipeQuery) {
      final String id = recipe[DatabaseConstants.recipesColId] as String;
      final ingredients = await _getIngredients(id);
      final steps = await _getSteps(id);
      recipeList.add(
        Recipe(
          id: id,
          name: recipe[DatabaseConstants.recipesColName] as String,
          imgPath: recipe[DatabaseConstants.recipesColImgPath] as String,
          ingredients: ingredients,
          steps: steps,
          numberOfServings:
              recipe[DatabaseConstants.recipesColNumberOfServings] as int,
        ),
      );
    }
    return recipeList;
  }

  Future<List<RecipeIngredient>> _getIngredients(String recipeId) async {
    final recipeIngredientsList = <RecipeIngredient>[];
    final recipeIngredientsQuery = await database.rawQuery(
      'SELECT * FROM ${DatabaseConstants.recipesIngredientsTableName} JOIN ${DatabaseConstants.ingredientsTableName} ON ${DatabaseConstants.recipesIngredientsTableName}.${DatabaseConstants.recipesIngredientsColIngredientId} = ${DatabaseConstants.ingredientsTableName}.${DatabaseConstants.ingredientsColId} WHERE ${DatabaseConstants.recipesIngredientsColRecipeId} = ?',
      [recipeId],
    );
    for (final recipeIngredient in recipeIngredientsQuery) {
      recipeIngredientsList.add(
        RecipeIngredient(
          id: recipeIngredient[DatabaseConstants.recipesIngredientsColId]
              as String,
          ingredient: Ingredient(
              id: recipeIngredient[DatabaseConstants.ingredientsColId]
                  as String,
              name: recipeIngredient[DatabaseConstants.ingredientsColName]
                  as String),
          quantity:
              recipeIngredient[DatabaseConstants.recipesIngredientsColQuantity]
                  as double,
          measure:
              recipeIngredient[DatabaseConstants.recipesIngredientsColMeasure]
                  as String,
        ),
      );
    }
    return recipeIngredientsList;
  }

  Future<List<RecipeStep>> _getSteps(String recipeId) async {
    final stepList = <RecipeStep>[];
    final stepQuery = await database.rawQuery(
        'SELECT * FROM ${DatabaseConstants.recipesStepsTableName} WHERE ${DatabaseConstants.recipesStepsColRecipeId} = ?',
        [recipeId]);
    for (final step in stepQuery) {
      stepList.add(
        RecipeStep(
          id: step[DatabaseConstants.recipesStepsColId] as String,
          order: step[DatabaseConstants.recipesStepsColOrder] as int,
          description:
              step[DatabaseConstants.recipesStepsColDescription] as String,
        ),
      );
    }
    return stepList;
  }
}
