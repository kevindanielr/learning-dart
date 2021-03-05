import 'dart:collection';
import 'dart:collection';

main() {
  Queue cola = new Queue();

  cola.addAll([10, 20, 30, 40, 50]);

  // print(cola);

  Iterator i = cola.iterator;

  while (i.moveNext()) {
    print(i.current);
  }
}
