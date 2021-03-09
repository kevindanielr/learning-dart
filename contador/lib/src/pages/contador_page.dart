import 'package:flutter/material.dart';

// #region de Widgets
class ContadorPage extends StatefulWidget {
  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  // Class para estilo de texto
  final TextStyle _estiloTexto = new TextStyle(fontSize: 25);

  // Propiedad conteo
  int _conteo = 0;

  // Background o caja principal
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateful'),
        centerTitle: true,
        elevation: 120.6,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de taps:', style: _estiloTexto),
            Text('$_conteo', style: _estiloTexto),
          ],
        ),
      ),
      floatingActionButton: _crearBotones(), // Funcion que crea botones
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  // Funcion para crear botones
  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0), // Es para separación
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _volverZero,
        ),
        Expanded(child: SizedBox(width: 5.0)), // Es para separación
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _decrementar,
        ),
        SizedBox(width: 5.0), // Es para separación
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        ),
      ],
    );
  }
// #endregion Widgets

  // #region Funciones
  void _agregar() {
    setState(() => _conteo++);
  }

  void _decrementar() {
    setState(() => _conteo--);
  }

  void _volverZero() {
    setState(() => _conteo = 0);
  }
  // #endregion Funciones

}
