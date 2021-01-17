import 'dart:convert';

import 'package:peliculas/src/model/pelicula_model.dart';
import 'package:http/http.dart' as http;

class PeliculaProvider {
  String _apiKey = '4b8216905de7e763f70fb4f5e0ae7615';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';

  Future<List<Pelicula>> getEnCines() async {
    final url = Uri.https(_url, '3/movie/now_playing',
        {'api_key': _apiKey, 'language': _language});

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);

    final peliculas = new Peliculas.fromJsonList(decodedData['results']);
    return peliculas.items;
  }
}
