import 'dart:io';

main() {
  stdout.writeln('¿Cúal es tu edad?');
  int edad = int.parse(stdin.readLineSync());

  // if (edad >= 18) {
  //   stdout.writeln('Eres mayor de edad (Estas viejo)');
  // } else {
  //   stdout.writeln('Eres menor de edad');
  // }

  if (edad >= 21) {
    stdout.writeln('CIUDADANO');
  } else if (edad >= 18 && edad <= 20) {
    stdout.writeln('MAYOR DE EDAD');
  } else if (edad < 18) {
    stdout.writeln('MENOR DE EDAD');
  }
}
