part of 'importmodel.dart';

class KisahNabiModel {
  List<DataKisahNabi> data;

  KisahNabiModel({this.data});

  KisahNabiModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DataKisahNabi>[];
      json['data'].forEach((v) {
        data.add(new DataKisahNabi.fromJson(v));
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

class DataKisahNabi {
  String name;
  int thnKelahiran;
  int usia;
  String description;
  String tmp;
  String imageUrl;
  String iconUrl;

  DataKisahNabi(
      {this.name,
      this.thnKelahiran,
      this.usia,
      this.description,
      this.tmp,
      this.imageUrl,
      this.iconUrl});

  DataKisahNabi.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    thnKelahiran = json['thn_kelahiran'];
    usia = json['usia'];
    description = json['description'];
    tmp = json['tmp'];
    imageUrl = json['image_url'];
    iconUrl = json['icon_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['thn_kelahiran'] = this.thnKelahiran;
    data['usia'] = this.usia;
    data['description'] = this.description;
    data['tmp'] = this.tmp;
    data['image_url'] = this.imageUrl;
    data['icon_url'] = this.iconUrl;
    return data;
  }
}
