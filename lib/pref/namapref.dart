part of 'importpref.dart';

Future saveNama(String value) async {
  final pref = await SharedPreferences.getInstance();
  return pref.setString("nama", value);
}

Future getNama() async {
  final pref = await SharedPreferences.getInstance();
  return pref.getString("nama");
}

Future rmvNama() async {
  final pref = await SharedPreferences.getInstance();
  return pref.remove("nama");
}
