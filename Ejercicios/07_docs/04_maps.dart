main() {
  final persona = {'nombre': 'Daniel', 'apellido': 'Rivas', 'edad': 24};
  final direccion = {'ciudad': 'San Salvador', 'pais': 'El Salvador'};

  print('Persona: $persona');
  print('Length: ${persona.length}');
  print('Keys: ${persona.keys}');
  print('Values: ${persona.values}');

  persona.addAll(direccion);
  print(persona);

  // persona.remove('pais');
  // print(persona);

  // persona.removeWhere((key, value) => key != 'nombre');

  // print('removeWhere: $persona');

  persona.forEach((key, value) {
    print('Key: $key , Value: $value');
  });

  final newPersona = persona.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });
  print(newPersona);
}
