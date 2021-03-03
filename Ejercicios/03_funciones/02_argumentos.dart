import '01_funcion_basica.dart';

main(List<String> args) {
  // saludar('Hola');
  // saludar2('Danito', 'Hello', 6);
  saludar2(veces: 10, mensaje: 'Hola', nombre: 'Danito');
}

void saludar(String mensaje, [String nombre = '<Insertar nombre>']) {
  print('$mensaje $nombre');
}

void saludar2({String nombre, String mensaje, int veces}) {
  for (var i = 0; i < veces; i++) {
    print('$mensaje $nombre');
  }
}
