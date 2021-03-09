abstract class Vehiculo {
  // Clases abstractas solo sirven para extender
  bool encendido = false;

  void encender() {
    encendido = true;
    print('Vehiculo encendido!');
  }

  void apagar() {
    encendido = false;
    print('Vehiculo apagado!');
  }

  bool revisarMotor();
}

class Carro extends Vehiculo {
  int kilometraje = 0;

  @override // Sobreescribir metodos en Dart
  bool revisarMotor() {
    print('Motor OK.');
    return true;
  }
}

main() {
  final ford = new Carro();

  ford.encender();
  ford.apagar();
  ford.revisarMotor();
}