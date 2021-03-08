main() {
  List<int> lista = [1, 2, 3, 4, 5, 6];
  List<int> lista2; // null
  List<int> lista3 = [6, 7, 8, 89, 55, -8];
  List<String> nombre = ['Tony', 'Peter'];

  print('Length: ${lista.length}');
  print('First: ${lista[0]}');
  print('First: ${lista.first}');
  print('Last: ${lista.last}');
  print('isEmpty: ${lista.isEmpty}');
  print('isEmpty: ${lista2 == null}');

  // Listas
  print('asMap: ${lista.asMap()}');

  Map listaMapa = lista.asMap();
  print('ListaMapa: ${listaMapa[4]}');

  Map nombreMapa = nombre.asMap();
  print('nombreMapa: ${nombreMapa[1]}');

  print('indexOf: ${nombre.indexOf('Peter')}');

  int mayor3 = lista.indexWhere((numero) => numero >= 3);
  print('index where mayor 3: $mayor3');

  print('Remove: ${nombre.remove('Tony')}');
  print(nombre);

  lista.shuffle();
  print('Shufle: $lista');

  lista.sort();
  print('Sort: $lista');
  print('Reverse: ${lista.reversed.toList()}');

  nombre.forEach((nombre) {
    nombre = nombre.toUpperCase();
    print(nombre);
  });

  print('Listado: $nombre');

  final newList = nombre.map((nombre) => nombre.toUpperCase()).toList();
  print(newList);
}
