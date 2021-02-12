import 'dart:io';

main() {
  stdout.writeln('Hello World!');
  stdout.writeln('¿Caul es tu nombre?');

  // Leer información
  String nombre = stdin.readLineSync(); // '10'
  stdout.writeln('Tu nombre es: ' + nombre);
  stdout.writeln('Tu nombre es: $nombre');
}
