import 'package:flutter/material.dart';

import 'package:app_peliculas/src/models/pelicula_model.dart';
import 'package:app_peliculas/src/providers/peliculas_provider.dart';

class DataSearch extends SearchDelegate {
  final peliculas = ['Saw', 'Aquiaman', 'Batman', 'Iron Man'];
  final peliculasRecientes = ['Spiderman', 'Capitan America'];
  String seleccion = '';

  final peliculasProvider = new PeliculasProvider();

  @override
  List<Widget> buildActions(BuildContext context) {
    // Son las acciones de nuestro Appbar
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = ''; // Variable interna de la busqueda
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icono a la izquierda de appBar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Instrucción que crea resultados que se va a mostrar
    return Center(
      child: Container(
        height: 100.0,
        width: 100.0,
        color: Colors.amber,
        child: Text(seleccion),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if (query.isEmpty) {
      return Container();
    } else {
      return FutureBuilder(
        future: peliculasProvider.buscarPelicula(query),
        builder:
            (BuildContext context, AsyncSnapshot<List<Pelicula>> snapshot) {
          if (snapshot.hasData) {
            final peliculas = snapshot.data;

            return ListView(
              children: peliculas.map((pelicula) {
                return ListTile(
                  leading: FadeInImage(
                    placeholder: AssetImage('assets/img/no-image.jpg'),
                    image: NetworkImage(
                      pelicula.getPosterImg(),
                    ),
                    width: 50.0,
                    fit: BoxFit.contain,
                  ),
                  title: Text(pelicula.title),
                  subtitle: Text(pelicula.originalTitle),
                  onTap: () {
                    close(context, null);
                    pelicula.uniqueId = "";
                    Navigator.pushNamed(
                      context,
                      'detalle',
                      arguments: pelicula,
                    );
                  },
                );
              }).toList(),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      );
    }
  }

  // Widget buildSuggestions(BuildContext context) {
  //   // Son las sugerencias que aparecen cuando persona escribe

  //   final listaSugerida = (query.isEmpty)
  //       ? peliculasRecientes
  //       : peliculas
  //           .where((p) => p.toLowerCase().startsWith(query.toLowerCase()))
  //           .toList();

  //   return ListView.builder(
  //     itemBuilder: (context, i) {
  //       return ListTile(
  //         leading: Icon(Icons.movie),
  //         title: Text(listaSugerida[i]),
  //         onTap: () {
  //           seleccion = listaSugerida[i];
  //           // Contruir resultados
  //           // showResults(context);
  //         },
  //       );
  //     },
  //     itemCount: listaSugerida.length,
  //   );
  // }
}
