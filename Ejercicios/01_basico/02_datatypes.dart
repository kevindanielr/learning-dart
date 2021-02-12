import 'dart:ffi';

main() {
  // ============================ Números
  int a = 10;
  double b = 10.5;
  int c;

  int x = 10, y = 20, z = 30;

  int _a;
  double $b = 45.55;

  // print(x);
  // print(y);
  // print(z);

  // ============================ Strings

  var nombre = 'Tony';
  String nombre2 = "Tony";
  String nombre3 = "O´Connor";

  String multilinea = '''
                        Hello Motherfucker!
                        Ni le creo
                      ''';
  print(multilinea);

  // ============================ Booleans
  var activo = true;
  bool activo2 = false;
  bool activo3 = null;

  activo = !activo;

  // ============================  Listas - Arrays

  var personajes = ['Batman', 'Superman', 10, true];
  List<String> personajes1 = ['Batman', 'Superman'];

  List<String> personajes2 = new List(); // Lista dinamica

  personajes2.add('Superman');
  personajes2.add('Batman');

  personajes2.addAll(['Superman', 'Batman', 'Robbin']);

  personajes2..add('Batsi')..add('Pruebas');

  print(personajes2);

  List<String> villanos = new List(3); // Lista estatica
  // villanos.addAll(['Lex', 'Red Skull', 'Doom']); // No se puede usar esta funcion a una lista estatica
  villanos[0] = 'Lex';
  villanos[1] = 'Red Skull';
  villanos[2] = 'Doom';

  print(villanos);

  // ============================ Sets

  Set<String> villanos2 = {'Superman', 'Batman', 'Robbin'};
  villanos2.add('Flash Reverso');

  villanos2.add('Batman');

  print(villanos2.first);

  // ============================  Mapas ( Diccionario: Llave - Valor )
  Map<dynamic, String> ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia y el dinero',
    10: 'Nivel de energía'
  };

  print(ironman);
  print(ironman['nombre']);
  print(ironman[10]);

  Map<String, dynamic> capitan = new Map();
  capitan.addAll({'nombre': 'Steve', 'poder': 'Soportar sueron sin morir'});
}
