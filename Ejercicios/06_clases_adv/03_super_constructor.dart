class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNommbre() => print('Nombre : $nombre, Edad: $edad');
}

class Cliente extends Persona {
  String direccion;
  List ordenes = [];

  Cliente(int edadActual, String nombreActual)
      : super(nombreActual, edadActual);
}

main() {
  final yo = new Cliente(24, 'Danito');
  yo.imprimirNommbre();
}
