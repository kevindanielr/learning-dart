main() {
  var a = 10;
  final double b = 10; // final es mas ligero, es similar a const
  const double c = 10;

  a = 20;
  // b = 20; // No se puede por que son de tipo final y const
  // const = 20;

  // final personasFinal = {'Juan', 'Pedro', 'Fernando'};
  // const personasConst = {'Juan', 'Pedro', 'Fernando'};

  final List<String> personasFinal = ['Juan', 'Pedro', 'Fernando'];
  List<String> personasConst = const ['Juan', 'Pedro', 'Fernando'];

  personasFinal.add('Daniel');
  // personasConst.add('Daniel');
  // personasFinal = []; // No se pueed por que apunta a un nuevo espacio en memoria

  print(personasFinal);
  print(personasConst);
}
