part of 'importmodel.dart';

class AsmaulHusnaModel {
  List<DataAsmaulHusna> data;

  AsmaulHusnaModel({this.data});

  AsmaulHusnaModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DataAsmaulHusna>[];
      json['data'].forEach((v) {
        data.add(new DataAsmaulHusna.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataAsmaulHusna {
  String index;
  String latin;
  String arabic;
  String translationId;
  String translationEn;

  DataAsmaulHusna(
      {this.index,
      this.latin,
      this.arabic,
      this.translationId,
      this.translationEn});

  DataAsmaulHusna.fromJson(Map<String, dynamic> json) {
    index = json['index'];
    latin = json['latin'];
    arabic = json['arabic'];
    translationId = json['translation_id'];
    translationEn = json['translation_en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['index'] = this.index;
    data['latin'] = this.latin;
    data['arabic'] = this.arabic;
    data['translation_id'] = this.translationId;
    data['translation_en'] = this.translationEn;
    return data;
  }
}
