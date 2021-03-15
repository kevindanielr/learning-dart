import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:app_peliculas/src/models/pelicula_model.dart';

class PeliculasProvider {
  String _apiKey = 'eec85401b909d8123630bd5f76ec8bff';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  Future<List<Pelicula>> getEnCines() async {
    // Generando la url
    final url = Uri.https(_url, '/3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
    });

    // Generando peticion http
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body); // Convirtiendo a JSON

    // Convirtiendo de JSON a Lista de Peliculas
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

    return peliculas.items;
  }

  Future<List<Pelicula>> getPopulares() async {
    // Generando la url
    final url = Uri.https(_url, '/3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
    });

    // Generando peticion http
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body); // Convirtiendo a JSON

    // Convirtiendo de JSON a Lista de Peliculas
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

    return peliculas.items;
  }
}
