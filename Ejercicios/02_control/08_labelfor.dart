main() {
  outerLoop:
  for (var i = 0; i < 5; i++) {
    print("Valor de i: $i");

    innerLoop:
    for (var j = 0; j < 5; j++) {
      print("Valor de j: $j");

      if (j == 2) {
        // break innerLoop; // Para salir del innerLoop por for con label
        break outerLoop;
      }
    }
  }
}
