// To parse this JSON data, do
//
//     final reqRespRespuesta = reqRespRespuestaFromJson(jsonString);

import 'dart:convert';

import 'package:paquetes/clases/persona.dart';

ReqRespRespuesta reqRespRespuestaFromJson(String str) =>
    ReqRespRespuesta.fromJson(json.decode(str));

String reqRespRespuestaToJson(ReqRespRespuesta data) =>
    json.encode(data.toJson());

class ReqRespRespuesta {
  ReqRespRespuesta({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  int page;
  int perPage;
  int total;
  int totalPages;
  List<Persona> data;
  Support support;

  factory ReqRespRespuesta.fromJson(Map<String, dynamic> json) =>
      ReqRespRespuesta(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Persona>.from(json["data"].map((x) => Persona.fromJson(x))),
        support: Support.fromJson(json["support"]),
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "support": support.toJson(),
      };
}

class Support {
  Support({
    this.url,
    this.text,
  });

  String url;
  String text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
        url: json["url"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
        "text": text,
      };
}
