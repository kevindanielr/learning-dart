main() {
  String nombre = 'Daniel';
  String apellido = "Rivas";
  // String nombreCompleto = '$nombre $apellido';
  String nombreCompleto = '$nombre' ' ' '$apellido';

  print('String: $nombreCompleto');
  print('Length: ${nombreCompleto.length}');
  print('Contains D: ${nombreCompleto.contains('D', 1)}');
  print('Endswith s: ${nombreCompleto.endsWith('s')}');
  print('PadLeft: ${nombreCompleto.padLeft(20, '...')}');
  print('PadRight: ${nombreCompleto.padRight(20, '...')}');

  print('Operador []: ${nombreCompleto[1]}');
  print('Operador *: ${nombreCompleto * 2}');
  print(
      'Replace All: ${nombreCompleto.replaceAll(new RegExp(r'a'), 'u')}'); // Todas las a por una u
  print('Substring *: ${nombreCompleto.substring(0, 6)}...');
  print('indexOf: ${nombreCompleto.indexOf(' ')}');
  print('Split: ${nombreCompleto.split(' ')}');
  print(
      'Capitalizar ultima letra: ${nombreCompleto[nombreCompleto.length - 1].toUpperCase()}');
}
