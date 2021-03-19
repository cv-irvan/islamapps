part of 'importmodel.dart';

class AyatKursiModel {
  DataAyatKursi data;

  AyatKursiModel({this.data});

  AyatKursiModel.fromJson(Map<String, dynamic> json) {
    data =
        json['data'] != null ? new DataAyatKursi.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class DataAyatKursi {
  String tafsir;
  String translation;
  String arabic;
  String latin;

  DataAyatKursi({this.tafsir, this.translation, this.arabic, this.latin});

  DataAyatKursi.fromJson(Map<String, dynamic> json) {
    tafsir = json['tafsir'];
    translation = json['translation'];
    arabic = json['arabic'];
    latin = json['latin'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tafsir'] = this.tafsir;
    data['translation'] = this.translation;
    data['arabic'] = this.arabic;
    data['latin'] = this.latin;
    return data;
  }
}
