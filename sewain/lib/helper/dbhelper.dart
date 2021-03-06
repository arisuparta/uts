import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:tugas/models/penjualan.dart';

class DbHelper {
  static DbHelper _dbHelper;
  static Database _database;
  DbHelper._createObject();
  factory DbHelper() {
    if (_dbHelper == null) {
      _dbHelper = DbHelper._createObject();
    }
    return _dbHelper;
  }
  Future<Database> initDh() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'penjualan.db';
    var todoDatabase = openDatabase(path, version: 1, onCreate: _createDb);
    return todoDatabase;
  }

  void _createDb(Database db, int version) async {
    await db.execute('''
      CREATE TABLE SEWA(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        name TEXT,
        desc TEXT,
        jumlah REAL,
        tanggal TEXT
      )
    ''');
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initDh();
    }
    return _database;
  }

  Future<List<Map<String, dynamic>>> select() async {
    Database db = await this.database;
    var maplist = await db.query('sewa', orderBy: 'tanggal');
    return maplist;
  }

  Future<int> insert(Penjualan object) async {
    Database db = await this.database;
    int count = await db.insert('sewa', object.toMap());
    return count;
  }

  Future<int> update(Penjualan object) async {
    Database db = await this.database;
    int count = await db
        .update('sewa', object.toMap(), where: 'id=?', whereArgs: [object.id]);
    return count;
  }

  Future<int> delete(int id) async {
    Database db = await this.database;
    int count = await db.delete('sewa', where: 'id=?', whereArgs: [id]);
    return count;
  }

  Future<List<Penjualan>> getPenjualanList() async {
    var penjualanMapList = await select();
    int count = penjualanMapList.length;
    List<Penjualan> penjualanList = List<Penjualan>();
    for (int i = 0; i < count; i++) {
      penjualanList.add(Penjualan.fromMap(penjualanMapList[i]));
    }
    return penjualanList;
  }
}
