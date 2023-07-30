import 'package:e_fridge/model/ingredient_model.dart';
import 'package:e_fridge/model/recipe_ingredient_model.dart';

import '../model/recipe_model.dart';
import '../model/recipe_step_model.dart';

List<Recipe> dummyRecipeList = [
  Recipe(
    id: "1",
    name: "Oeufs brouillé",
    ingredients: [
      RecipeIngredient(
        id: "1",
        ingredient: Ingredient(id: "1", name: "Oeufs"),
        quantity: 4,
        measure: null,
      ),
      RecipeIngredient(
        id: "2",
        ingredient: Ingredient(id: "2", name: "Lait"),
        quantity: 10,
        measure: "cl",
      ),
    ],
    steps: [
      RecipeStep(
        id: "1",
        order: 1,
        description: "Mélanger les oeufs et le lait à l'aide d'un fouet",
      ),
      RecipeStep(
        id: "2",
        order: 2,
        description: "Faire cuire à feu doux en remuant en continu",
      ),
    ],
    imgPath:
        'https://img.cuisineaz.com/660x660/2016/04/28/i18845-oeufs-brouilles.jpg',
    numberOfServings: 1,
  ),
  Recipe(
    id: "2",
    name: "Oeufs brouillé 2",
    ingredients: [
      RecipeIngredient(
        id: "1",
        ingredient: Ingredient(id: "1", name: "Oeufs"),
        quantity: 4,
        measure: null,
      ),
      RecipeIngredient(
        id: "2",
        ingredient: Ingredient(id: "2", name: "Lait"),
        quantity: 10,
        measure: "cl",
      ),
    ],
    steps: [
      RecipeStep(
        id: "1",
        order: 1,
        description: "Mélanger les oeufs et le lait à l'aide d'un fouet",
      ),
      RecipeStep(
        id: "2",
        order: 2,
        description: "Faire cuire à feu doux en remuant en continu",
      ),
    ],
    imgPath:
        'https://img.cuisineaz.com/660x660/2016/04/28/i18845-oeufs-brouilles.jpg',
    numberOfServings: 1,
  ),
  Recipe(
    id: "3",
    name: "Oeufs brouillé 3",
    ingredients: [
      RecipeIngredient(
        id: "1",
        ingredient: Ingredient(id: "1", name: "Oeufs"),
        quantity: 4,
        measure: null,
      ),
      RecipeIngredient(
        id: "2",
        ingredient: Ingredient(id: "2", name: "Lait"),
        quantity: 10,
        measure: "cl",
      ),
    ],
    steps: [
      RecipeStep(
        id: "1",
        order: 1,
        description: "Mélanger les oeufs et le lait à l'aide d'un fouet",
      ),
      RecipeStep(
        id: "2",
        order: 2,
        description: "Faire cuire à feu doux en remuant en continu",
      ),
    ],
    imgPath:
        'https://img.cuisineaz.com/660x660/2016/04/28/i18845-oeufs-brouilles.jpg',
    numberOfServings: 1,
  ),
];
