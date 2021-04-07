import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  int _selectedMenuOpt = 0; // Propiedad que va a cambiar en la barra tabs

  // Getter
  int get selectedMenuOpt {
    return this._selectedMenuOpt;
  }

  // Setter
  set selectedMenuOpt(int i) {
    this._selectedMenuOpt = i;
    notifyListeners(); // Notificando a todos los widgets que cambio el estado
  }
}
