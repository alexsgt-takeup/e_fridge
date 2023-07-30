import 'package:e_fridge/constants/db_constants.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class SqfliteRepository {
  late Database _database;

  Future<void> init() async {
    final documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, DatabaseConstants.databaseName);

    _database = await openDatabase(
      path,
      version: DatabaseConstants.databaseVersion,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute(DatabaseConstants.createDatabaseQuery);
  }

  // Insert new value in database
  Future<int> insert(String table, Map<String, dynamic> row) async {
    return await _database.insert(table, row);
  }

  // Get all values from a table in database
  Future<List<Map<String, dynamic>>> queryAllRows(String table) async {
    return await _database.query(table);
  }

  // Update a row specified by the id in database
  Future<int> update(
      String table, String columnId, Map<String, dynamic> row) async {
    int id = row[columnId];
    return await _database.update(
      table,
      row,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }

  // Deletes the row specified by the id in databse
  Future<int> delete(String table, String id, String columnId) async {
    return await _database.delete(
      table,
      where: '$columnId = ?',
      whereArgs: [id],
    );
  }
}
