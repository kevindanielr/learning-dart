import 'dart:async';

main() {
  final streamController = new StreamController<String>.broadcast();

  streamController.stream.listen((data) => {print('Despegando! $data')},
      onError: (error) => print('Error! $error'),
      cancelOnError: false,
      onDone: () => print('Mision completa!'));

  streamController.stream.listen((data) => {print('Despegando! $data')},
      onError: (error) => print('Error! $error'),
      cancelOnError: false,
      onDone: () => print('Mision completa!'));

  streamController.sink.add('Apollo 11');
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');
  streamController.sink.addError('Houston, Tenemos un problema!');
  streamController.sink.add('Apollo 14');
  streamController.sink.close();

  print('Fin del Main');
}
