part of 'importmodel.dart';

class DoaHarianModel {
  List<DataDoaHarian> data;

  DoaHarianModel({this.data});

  DoaHarianModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <DataDoaHarian>[];
      json['data'].forEach((v) {
        data.add(new DataDoaHarian.fromJson(v));
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

class DataDoaHarian {
  String title;
  String arabic;
  String latin;
  String translation;

  DataDoaHarian({this.title, this.arabic, this.latin, this.translation});

  DataDoaHarian.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    arabic = json['arabic'];
    latin = json['latin'];
    translation = json['translation'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['arabic'] = this.arabic;
    data['latin'] = this.latin;
    data['translation'] = this.translation;
    return data;
  }
}
