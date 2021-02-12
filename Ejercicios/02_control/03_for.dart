import 'dart:io';

main() {
  /*
  for (var i = 0; i <= 10; i++) {
    // print("Hello World " + i.toString());
    // print("Hello World: $i");
    // print("Hello World: ${2 + 2}");
  }
  */

  // Tarea:
  print("Ingrese un número: ");
  int tabla = int.parse(stdin.readLineSync());

  print("Tabla de $tabla");
  for (var i = 1; i <= 10; i++) {
    print("$tabla x $i = ${tabla * i}");
  }
}
