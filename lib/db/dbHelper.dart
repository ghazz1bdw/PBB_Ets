import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:io';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
// import '';

class DbHelper {
  late Database database;
  static DbHelper dbHelper = DbHelper();
  final String nameColumn = 'name';
  final String tableName  = 'book';
  final String idColumn = 'id';
  final String isFavoriteColumn = 'isFavorite';
  final String synopsisColumn = 'synopsis';
  final String imageColumn = 'image';
}

initDatabase() async{
  database = await connectToDatabase();
}

Future<Database> connectToDatabase() async{
  Directory directory = await getApplicationDocumentsDirectory();

  String path = '$directory/books.db';
  return openDatabase(
    path,
    version: 1,
    onCreate: (db, version)
  {}
    }
  )
}