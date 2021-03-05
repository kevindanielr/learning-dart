import 'dart:io';

main() async {
  String path = '\\assets\\personas.txt';
  // leerArchivo(path).then(print);
  // print('Fin del main');

  String texto = await leerArchivo(path);
}

Future leerArchivo(String path) async {
  File file = new File(Directory.current.path + path);
  return file.readAsString();
}
