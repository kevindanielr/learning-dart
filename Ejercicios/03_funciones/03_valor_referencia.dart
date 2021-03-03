main() {
  String nombre = "danielito";
  String nombre2 = capitalizar(nombre);

  // print(nombre);
  // print(nombre2);

  Map<String, String> personita = {'nombre': 'Jhon Snow'};

  Map<String, String> personita2 = capitalizarMapa(personita);

  print(personita);
  print(personita2);
}

// Funciones
String capitalizar(String texto) {
  return texto.toUpperCase();
}

Map<String, String> capitalizarMapa(Map<String, String> persona) {
  // Utilizar operador spread para clonar y quitar valor de referencia
  persona = {...persona}; // Con este operador se rompe la referencia
  persona['nombre'] = persona['nombre'].toUpperCase();
  return persona;
}

////////////////////////////////////////////////////////////////////////////
// Cualquiera que no sea bool, String o numero, sera valor por referencia //
////////////////////////////////////////////////////////////////////////////
