mixin Logger {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('hoy $hoy :::: $texto');
  }
}

mixin Logger2 {
  void imprimir2(String texto) {
    final hoy = DateTime.now();
    print('hoy $hoy :::: $texto');
  }
}

abstract class Astro with Logger, Logger2 {
  String nombre;

  Astro() {
    imprimir('--- Init Asto ---');
  }

  void existo() {
    print('soy un ser celestial y existo.');
  }
}

class Asteroide extends Astro with Logger, Logger2 {
  String nombre;

  Asteroide(this.nombre) {
    imprimir('Soy $nombre');
    imprimir2('Soy $nombre');
  }
}

main() {
  final ceres = new Asteroide('ceres');
}
