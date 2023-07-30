class DatabaseConstants {
  // Database info
  static const String databaseName = "e_fridge.db";
  static const int databaseVersion = 1;

  static const String createDatabaseQuery = '''

      CREATE TABLE IF NOT EXISTS recipes(id STRING PRIMARY KEY, name TEXT NOT NULL, number_of_servings INTEGER NOT NULL, img_path STRING); 
      CREATE TABLE IF NOT EXISTS ingredients(id STRING PRIMARY KEY, name TEXT NOT NULL); 
      CREATE TABLE IF NOT EXISTS recipes_ingredients(id STRING PRIMARY KEY, FOREIGN KEY(recipe_id) REFERENCES recipes(id), 
                                                    FOREIGN KEY(ingredient_id) REFERENCES ingredients(id), 
                                                    quantity INTEGER, measure STRING);
      CREATE TABLE IF NOT EXISTS recipes_steps(id STRING PRIMARY KEY, FOREIGN KEY(recipe_id) REFERENCES recipes(id), 
                                              order INTEGER, description STRING)
      ''';

//recipes table info
  static const String recipesTableName = "recipes";
  static const String recipesColId = "id";
  static const String recipesColName = "name";
  static const String recipesColNumberOfServings = "number_of_servings";
  static const String recipesColImgPath = "img_path";

//ingredients table info
  static const String ingredientsTableName = "ingredients";
  static const String ingredientsColId = "id";
  static const String ingredientsColName = "name";

//recipe_ingredients table info
  static const String recipesIngredientsTableName = "recipes_ingredients";
  static const String recipesIngredientsColId = "id";
  static const String recipesIngredientsColRecipeId = "recipe_id";
  static const String recipesIngredientsColIngredientId = "ingredient_id";
  static const String recipesIngredientsColQuantity = "quantity";
  static const String recipesIngredientsColMeasure = "measure";

//recipes_steps table info
  static const String recipesStepsTableName = "recipes_steps";
  static const String recipesStepsColId = "id";
  static const String recipesStepsColRecipeId = "recipe_id";
  static const String recipesStepsColOrder = "order";
  static const String recipesStepsColDescription = "description";

}
