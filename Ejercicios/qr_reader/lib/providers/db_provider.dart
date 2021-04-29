import 'dart:io';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

import 'package:qr_reader/models/scan_model.dart';

class DBProvider {
  static Database _database;
  static final DBProvider db =
      DBProvider._(); // Intancia de esta clase, constructor privado

  DBProvider._(); // Esto ayudara a obtener la misma instancia de Base de datos

  // Obtener base de datos
  Future<Database> get database async {
    // si no es primera vez que se acsede a la base de datos
    if (_database != null) return _database;

    // Si es primera vez
    _database = await initDB();
    return _database;
  }

  // Procedimiento para preparar la base de datos
  Future<Database> initDB() async {
    // Path de donde almacenaremos la base de datos
    Directory documentsDirectory =
        await getApplicationDocumentsDirectory(); //Cuando se borre la app se borra este directorio

    final path = join(
        documentsDirectory.path, 'ScansDB.db'); // Join sirve para unir paths
    print("PATH:" + path);

    // Creacion de base de datos
    return await openDatabase(
      path,
      version: 1,
      onOpen: (db) {}, // Metodo que se ejecuta cuando se abre la DB
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE Scans(
            id INTEGER PRIMARY KEY,
            tipo TEXT,
            valor TEXT
          );
        ''');
      }, // Metodo que se ejecuta cuando se crea la base de datos
    ); // Incrementar version si se hace un cambio estructural a la base de datos
  }

  Future<int> nuevoScanRaw(ScanModel nuevoScan) async {
    final id = nuevoScan.id;
    final tipo = nuevoScan.tipo;
    final valor = nuevoScan.valor;

    final db =
        await database; // Espera que la base de datos esta lista, es el getter

    // Haciendo Raw inserts
    final res = await db.rawInsert('''
      INSERT INTO Scans( id, tipo, valor)
        VALUES( $id, $tipo, $valor )
    ''');

    return res;
  }

  // INSERTS de nuevos Scanner
  Future<int> nuevoScan(ScanModel nuevoScan) async {
    final db = await database;
    final res = await db.insert('Scans', nuevoScan.toJson());
    print(res);
    return res;
  }

  // SELECTS de nuevos Scanner
}
