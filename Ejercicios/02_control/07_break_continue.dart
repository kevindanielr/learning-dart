main() {
  for (var i = 0; i < 10; i++) {
    if (i == 5) {
      continue; // Pasa la siguiente iteración
    }
    print(i);

    if (i == 2) {
      break; // Sale de la iteración
    }
  }
}
