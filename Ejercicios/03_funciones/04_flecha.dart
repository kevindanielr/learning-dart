main() {
  int a = 10, b = 20;
  int resultado = sumarFlecha(a, b);
  print(resultado);

  List<int> listado = [1, 8, 4, 6, 22, 2, 3, 12];

  // var nuevoListado = listado.where((numero) {
  //   return numero >= 4;
  // });

  var nuevoListado = listado.where((numero) => numero >= 4);

  print(nuevoListado.toSet().toList());
}

int sumar(int x, int y) {
  return x + y;
}

int sumarFlecha(int x, int y) => x + y;
