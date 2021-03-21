part of 'importmodel.dart';

class NiatSholatModel {
  List<DataNiatSholat> data;

  NiatSholatModel({this.data});

  NiatSholatModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DataNiatSholat>[];
      json['data'].forEach((v) {
        data.add(new DataNiatSholat.fromJson(v));
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

class DataNiatSholat {
  int id;
  String name;
  String arabic;
  String latin;
  String terjemahan;

  DataNiatSholat(
      {this.id, this.name, this.arabic, this.latin, this.terjemahan});

  DataNiatSholat.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    arabic = json['arabic'];
    latin = json['latin'];
    terjemahan = json['terjemahan'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['arabic'] = this.arabic;
    data['latin'] = this.latin;
    data['terjemahan'] = this.terjemahan;
    return data;
  }
}
