import 'package:flutter/material.dart';
import 'package:qr_reader/models/scan_model.dart';
import 'package:qr_reader/providers/db_provider.dart';

class ScanListProvider extends ChangeNotifier {
  List<ScanModel> scans = [];
  String tipoSeleccionado = 'http';

  // Agregando nuevo Scan
  nuevoScan(String valor) async {
    final nuevoScan = new ScanModel(valor: valor); // Creando la instancia
    final id = await DBProvider.db.nuevoScan(
        nuevoScan); // Obteniendo el id de la nueva insercion en la BD
    nuevoScan.id = id; // Asignar el ID de la base de datos al modelo

    if (this.tipoSeleccionado == nuevoScan.tipo) {
      this.scans.add(nuevoScan); // Agregando al arreglo de Scans
      notifyListeners(); // Actualizar la UI (Redibujarse)
    }
  }

  cargarScans() async {
    final scans = await DBProvider.db.getTodosScan();
    this.scans = [...scans];
    notifyListeners();
  }

  cargarScanXTipo(String tipo) async {
    final scans = await DBProvider.db.getScansXTipo(tipo);
    this.scans = [...scans];
    this.tipoSeleccionado = tipo;
    notifyListeners();
  }

  borrarTodos() async {
    await DBProvider.db.deleteAllScans();
    this.scans = [];
    notifyListeners();
  }

  borrarScanXId(int id) async {
    await DBProvider.db.deleteScan(id);
    this.cargarScanXTipo(this.tipoSeleccionado);
  }
}
