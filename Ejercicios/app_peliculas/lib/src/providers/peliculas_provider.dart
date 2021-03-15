import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:convert';

import 'package:app_peliculas/src/models/pelicula_model.dart';

import '../models/pelicula_model.dart';

class PeliculasProvider {
  // Parametros para el body request de la API de peliculas
  String _apiKey = 'eec85401b909d8123630bd5f76ec8bff';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  // contador de page de peliculas populares
  int _popularesPage = 0;

  // Flag loading
  bool _cargando = false;

  // Lista de peliculas populares
  List<Pelicula> _populares = new List();
  // Stream de peliculas
  final _popularesStreamController =
      StreamController<List<Pelicula>>.broadcast();

  // funcion para introducir peliculas
  Function(List<Pelicula>) get popularesSink =>
      _popularesStreamController.sink.add;

  // funcion para escuchar peliculas
  Stream<List<Pelicula>> get popularesStream =>
      _popularesStreamController.stream;

  // Funcion para destruir el Stream
  void disposeStreams() {
    _popularesStreamController?.close();
  }

  // Metodo para el procesamiento de la respuesta
  Future<List<Pelicula>> _procesarRespuesta(Uri url) async {
    // Generando peticion http
    final resp = await http.get(url);
    final decodedData = json.decode(resp.body); // Convirtiendo a JSON

    // Convirtiendo de JSON a Lista de Peliculas
    final peliculas = new Peliculas.fromJsonList(decodedData['results']);

    return peliculas.items;
  }

  // Metodo que realiza peticion para obtener peliculas que estan en el cine
  Future<List<Pelicula>> getEnCines() async {
    // Generando la url
    final url = Uri.https(_url, '/3/movie/now_playing', {
      'api_key': _apiKey,
      'language': _language,
    });

    return await _procesarRespuesta(url);
  }

  // Metodo que realiza peticion que obtiene peliculas populares
  Future<List<Pelicula>> getPopulares() async {
    if (_cargando) return [];

    _cargando = true;

    _popularesPage++; // Sumando la pagina
    // Generando la url
    final url = Uri.https(_url, '3/movie/popular', {
      'api_key': _apiKey,
      'language': _language,
      'page': _popularesPage.toString(),
    });

    final resp = await _procesarRespuesta(
        url); // Capturando en una variable data de petición
    _populares.addAll(resp); // Agregando peliculas al stream
    popularesSink(_populares);

    _cargando = false;
    return resp;
  }
}
