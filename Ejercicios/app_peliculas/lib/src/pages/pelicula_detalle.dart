import 'package:flutter/material.dart';

import '../models/pelicula_model.dart';
import '../models/pelicula_model.dart';

class PeliculaDetalle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Pelicula pelicula = ModalRoute.of(context)
        .settings
        .arguments; // Recibiendo como argumento el objeto Pelicula

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _crearAppbar(pelicula),
          SliverList(
            delegate: SliverChildListDelegate(
                [SizedBox(height: 10.0), _postertitulo(pelicula)]),
          ),
        ],
      ),
    );
  }

  Widget _crearAppbar(Pelicula pelicula) {
    return SliverAppBar(
      elevation: 2.0,
      backgroundColor: Colors.indigoAccent,
      expandedHeight: 200.0,
      floating: false,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          pelicula.title,
          style: TextStyle(color: Colors.white, fontSize: 16.0),
        ),
        background: FadeInImage(
          image: NetworkImage(pelicula.getBackgroundImg()),
          placeholder: AssetImage('assets/img/loading.gif'),
          fadeInDuration: Duration(milliseconds: 150),
          fit: BoxFit.cover,
        ),
        centerTitle: true,
      ),
    );
  }

  _postertitulo(Pelicula pelicula) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image(
              image: NetworkImage(pelicula.getPosterImg()),
              height: 150.0,
            ),
          ),
          Flexible(
            child: Column(
              children: [Text(pelicula.title), Text(pelicula.originalTitle)],
            ),
          )
        ],
      ),
    );
  }
}
