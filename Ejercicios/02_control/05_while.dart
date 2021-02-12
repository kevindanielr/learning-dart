import 'dart:io';

main() {
  String continuar = 'y';
  int contador = 0;

  while (continuar == 'y') {
    contador++;
    stdout.writeln('Contador: $contador');
    stdout.writeln('¿Desea Continuar? (y/n)');
    continuar = stdin.readLineSync();
  }
}
