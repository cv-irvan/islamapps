part of 'importmodel.dart';

class DoaTahlilModel {
  String source;
  String basedOn;
  List<DataTahlil> data;

  DoaTahlilModel({this.source, this.basedOn, this.data});

  DoaTahlilModel.fromJson(Map<String, dynamic> json) {
    source = json['source'];
    basedOn = json['based_on'];
    if (json['data'] != null) {
      data = <DataTahlil>[];
      json['data'].forEach((v) {
        data.add(new DataTahlil.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['source'] = this.source;
    data['based_on'] = this.basedOn;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class DataTahlil {
  int id;
  String title;
  String arabic;
  String translation;

  DataTahlil({this.id, this.title, this.arabic, this.translation});

  DataTahlil.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    arabic = json['arabic'];
    translation = json['translation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['arabic'] = this.arabic;
    data['translation'] = this.translation;
    return data;
  }
}
