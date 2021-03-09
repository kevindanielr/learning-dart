import 'package:http/http.dart' as http;
import 'package:paquetes/clases/pais.dart';

import 'package:paquetes/clases/reqres_respuesta.dart';
// import 'clases/reqres_respuesta.dart';

void getReqResp_service() {
  final url = 'https://reqres.in/api/users?page=2';
  http.get(url).then((response) {
    // print(response.body);
    // final body = jsonDecode(response.body);
    // print('Page : ${body['page']}');
    // print('per_page : ${body['per_page']}');
    // print('id 3r elemento : ${body['data'][2]['id']}');

    final resReqRes = reqRespRespuestaFromJson(response.body);
    print('Page : ${resReqRes.page}');
    print('per_page : ${resReqRes.perPage}');
    print('id 3r elemento : ${resReqRes.data[2].id}');
  });
}

void getPais() {
  final url = 'https://restcountries.eu/rest/v2/alpha/col';
  http.get(url).then((response) {
    final col = paisFromJson(response.body);
    print('===========================');
    print('Pais: ${col.name}');
    print('Población: ${col.population}');
    print('Fronteras:');
    col.borders.forEach((pais) => print(pais));
    print('languages: ${col.languages[0].name}');
    print('Latitud : ${col.latlng[0]}');
    print('Longitud: ${col.latlng[1]}');
    print('Moneda: ${col.currencies[0].name}');
    print('Bandera: ${col.flag}');
    print('===========================');
  });
}
