main() {
  int a = 10, b = 20;
  int resultado = sumarFlecha(a, b);
  print(resultado);

  List<int> Listado = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  var nuevoListado = Listado.where((numero) {});
}

// Funcion normal
int sumar(int x, int y) {
  return x + y;
}

// Función flecha
int sumarFlecha(int x, int y) => x + y;
