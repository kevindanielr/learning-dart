import 'package:componentes/src/pages/alert_page.dart';
import 'package:flutter/material.dart';

// Importaciones propias
import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _lista(),
    );
  }

  // Metodo que crea un Widget lista
  Widget _lista() {
    // Cargando data de menu de JSON local
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  // Metodo que regresa una lista de Widgets
  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right_outlined, color: Colors.blue),
        onTap: () {
          // Navegando a nueva pantalla
          Navigator.pushNamed(context, opt['ruta']);

          // final route = MaterialPageRoute(
          //   builder: (context) => AlertPage(),
          // );
          // Navigator.push(context, route);
        },
      );

      // Agregando widgets
      opciones..add(widgetTemp)..add(Divider());
    });

    return opciones;
  }
}
