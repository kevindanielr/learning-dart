import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle; // Sirve para leer JSON

class _MenuProvider {
  List<dynamic> opciones = [];

  _MenuProvider() {
    // cargarData();
  }

  // Funcion que sirve para leer archivo JSON Local
  Future<List<dynamic>> cargarData() async {
    final resp = await rootBundle.loadString('data/menu_opts.json');

    Map dataMap = json.decode(resp); // Convirtiendo data en mapa
    print(dataMap['rutas']);
    opciones = dataMap['rutas'];
    return opciones;
  }
}

// instancia de la clase
final menuProvider =
    new _MenuProvider(); // De esta manera solo esta exponiendo la instancia del menu provider
