import 'package:e_fridge/model/recipe_ingredient_model.dart';
import 'package:e_fridge/model/steps_model.dart';

import '../model/recipe_model.dart';

List<Recipe> dummyRecipeList = [
  Recipe(
    id: "1",
    name: "Oeufs brouillé",
    ingredients: [
      RecipeIngredient(
        id: "1",
        ingredient: "oeufs",
        quantity: 4,
        measure: null,
      ),
      RecipeIngredient(
        id: "2",
        ingredient: "lait",
        quantity: 10,
        measure: "cl",
      ),
    ],
    steps: [
      Step(
        id: "1",
        order: 1,
        description: "Mélanger les oeufs et le lait à l'aide d'un fouet",
      ),
      Step(
        id: "2",
        order: 2,
        description: "Faire cuire à feu doux en remuant en continu",
      ),
    ],
    personnQuantity: 1,
  ),
  Recipe(
    id: "2",
    name: "Oeufs brouillé 2",
    ingredients: [
      RecipeIngredient(
        id: "1",
        ingredient: "oeufs",
        quantity: 4,
        measure: null,
      ),
      RecipeIngredient(
        id: "2",
        ingredient: "lait",
        quantity: 10,
        measure: "cl",
      ),
    ],
    steps: [
      Step(
        id: "1",
        order: 1,
        description: "Mélanger les oeufs et le lait à l'aide d'un fouet",
      ),
      Step(
        id: "2",
        order: 2,
        description: "Faire cuire à feu doux en remuant en continu",
      ),
    ],
    personnQuantity: 1,
  ),
  Recipe(
    id: "3",
    name: "Oeufs brouillé 3",
    ingredients: [
      RecipeIngredient(
        id: "1",
        ingredient: "oeufs",
        quantity: 4,
        measure: null,
      ),
      RecipeIngredient(
        id: "2",
        ingredient: "lait",
        quantity: 10,
        measure: "cl",
      ),
    ],
    steps: [
      Step(
        id: "1",
        order: 1,
        description: "Mélanger les oeufs et le lait à l'aide d'un fouet",
      ),
      Step(
        id: "2",
        order: 2,
        description: "Faire cuire à feu doux en remuant en continu",
      ),
    ],
    personnQuantity: 1,
  ),
];
