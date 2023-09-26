import 'package:flutter/material.dart';

import 'package:sipas/config/color_theme.dart';

class Recepies {
  int id;
  String urlGambar;
  String judulResep;
  String targetResep;
  String targetUsiaResep;
  String jenis;
  String bahanUtama;
  String durasiMemasak;
  String bahanText;
  String caraMembuatText;
  String nilaiGiziText;
  String updatedAt;
  bool isBook;

  Recepies({
    required this.id,
    required this.urlGambar,
    required this.judulResep,
    required this.targetResep,
    required this.targetUsiaResep,
    required this.jenis,
    required this.bahanUtama,
    required this.durasiMemasak,
    required this.bahanText,
    required this.caraMembuatText,
    required this.nilaiGiziText,
    required this.updatedAt,
    required this.isBook,
  });

  factory Recepies.fromJson(Map<String, dynamic> json) => Recepies(
        id: json["id"],
        urlGambar: json["urlGambar"],
        judulResep: json["judulResep"],
        targetResep: json["targetResep"],
        targetUsiaResep: json["targetUsiaResep"],
        jenis: json["jenis"],
        bahanUtama: json["bahanUtama"],
        durasiMemasak: json["durasiMemasak"],
        bahanText: json["bahanText"],
        caraMembuatText: json["caraMembuatText"],
        nilaiGiziText: json["nilaiGiziText"],
        updatedAt: json["updatedAt"],
        isBook: json["isBook"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "urlGambar": urlGambar,
        "judulResep": judulResep,
        "targetResep": targetResep,
        "targetUsiaResep": targetUsiaResep,
        "jenis": jenis,
        "bahanUtama": bahanUtama,
        "durasiMemasak": durasiMemasak,
        "bahanText": bahanText,
        "caraMembuatText": caraMembuatText,
        "nilaiGiziText": nilaiGiziText,
        "updatedAt": updatedAt,
        "isBook": isBook,
      };
}

class TypeRecipes {
  String text;
  Color color;

  TypeRecipes({
    required this.text,
    required this.color,
  });

  factory TypeRecipes.fromJson(Map<String, dynamic> json) {
    return TypeRecipes(
      text: json['text'],
      color: Color(json['color']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'color': color.value,
    };
  }
}

//for favorit user
List<Recepies> favoritRecepies = [];

//for child recepies
List<Recepies> listChildRecepies = [];

//for prenangcy recepies
List<Recepies> listPrenangcyRecepies = [];
