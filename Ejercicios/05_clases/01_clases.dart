import 'clases/persona.dart';

main() {
  final persona = new Persona(edad: 40, nombre: 'Jhon Snow');
  final persona40 = new Persona.persona40('Taty');
  final persona30 = new Persona.persona30('Mery');

  // persona
  //   ..nombre = "Danielito"
  //   ..edad = 24;
  // // ..bio = 'San Salvador';// Privada

  print(persona.bio);

  persona.bio = 'Cambie el valor';

  print(persona);

  print(persona40);
  print(persona30);
}
