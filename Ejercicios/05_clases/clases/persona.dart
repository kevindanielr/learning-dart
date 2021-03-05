class Persona {
  // Campos o propiedades
  String nombre;
  int edad;
  String _bio = 'Hello friend';

  //Gets y Sets

  // Getters
  String get bio => _bio.toUpperCase();

  // Setters
  // set bio(String texto) {
  //   _bio = texto;
  // }
  set bio(String texto) => _bio = texto;

  // Constructores
  // Persona(int edad, String nombre) {
  //   print('Constructor');
  //   this.nombre = nombre;
  //   this.edad = edad;
  //   _bio = 'Bio desde el constructor';
  // }
  Persona({this.edad = 33, this.nombre = "Sin nombre "});

  Persona.persona30(this.nombre) {
    this.edad = 30;
  }

  Persona.persona40(String nombre) {
    this.edad = 40;
    this.nombre = nombre;
  }

  // Metodos
  @override
  String toString() => '$nombre $edad $_bio';
}
