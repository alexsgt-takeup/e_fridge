class DatabaseConstants {
  // Database info
  static const String databaseName = "e_fridge.db";
  static const int databaseVersion = 1;

  static const String createDatabaseQuery = '''
      CREATE TABLE recipes(id INTEGER PRIMARY KEY, name TEXT, number_of_servings INTEGER); 
      ''';

//recipe table info
  static const String recipeTableName = "recipes";
  // column
  static const String recipeColumnId = "id";
  static const String recipeColumnName = "name";
  static const String recipeColumnNumberOfServings = "number_of_servings";
  static const String recipeColumnImgUrl = "img_url";
}
