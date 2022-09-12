import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';
import 'package:temopedia/extensions/extensions.dart'
    show TemTemApiTemModifier, IntModifier;

class DatabaseHelper {
  static const _databaseName = "temopedia.db";
  static const _databaseVersion = 1;

  static const tableFavorite = "favoriteTable";

  static const columnId = "_id";
  static const columnNumber = "number";
  static const columnFavorite = "favorite";

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();

  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return openDatabase(path, version: _databaseVersion, onCreate: _onCreate);
  }

  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $tableFavorite (
      $columnId INTEGER PRIMARY KEY,
      $columnNumber INTEGER NOT NULL,
      $columnFavorite INTEGER NOT NULL
    )
    ''');
  }

  Future<int> create(TemTemApiTem temtem) async {
    Database db = await instance.database;
    return await db.insert(tableFavorite, temtem.toSqlite());
  }

  Future<bool> read(int temtem) async {
    Database db = await instance.database;
    var query = await db
        .query(tableFavorite, where: '$columnNumber = ?', whereArgs: [temtem]);
    if (query.isNotEmpty) return (query.first[columnFavorite] as int).toBool();
    return false;
  }

  Future<List<Map<String, dynamic>>> readAllFav() async {
    final db = await instance.database;
    return await db.query(tableFavorite);
  }

  Future<int> update(TemTemApiTem temtem) async {
    Database db = await instance.database;
    return db.update(tableFavorite, temtem.toSqlite());
  }
}
