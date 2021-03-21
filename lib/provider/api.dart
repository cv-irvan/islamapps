part of 'importprovider.dart';

class Api {
  Future getAyatKursi() async {
    final ayatkursi = await req
        .get(Uri.parse('https://islamic-api-zhirrr.vercel.app/api/ayatkursi'));
    print('telah sampai api');
    if (ayatkursi.statusCode == 200) {
      print('req ayat kursi berhasil');
      return AyatKursiModel.fromJson(json.decode(ayatkursi.body));
    } else {
      print('req ayat kursi gagal ${ayatkursi.statusCode}');
    }
  }

  Future getDoaTahlil() async {
    final doatahlil = await req
        .get(Uri.parse('https://islamic-api-zhirrr.vercel.app/api/tahlil'));
    print('telah sampai api');
    if (doatahlil.statusCode == 200) {
      print('req doa tahlil berhasil');
      return DoaTahlilModel.fromJson(json.decode(doatahlil.body));
    } else {
      print('req doa tahlil gagal ${doatahlil.statusCode}');
    }
  }

  Future getAsmaulHusna() async {
    final asmaulhusna = await req.get(
        Uri.parse('https://islamic-api-zhirrr.vercel.app/api/asmaulhusna'));
    print('telah sampai api');
    if (asmaulhusna.statusCode == 200) {
      print('req asmaul husna berhasil');
      return AsmaulHusnaModel.fromJson(json.decode(asmaulhusna.body));
    } else {
      print('req asmaul husna gagal ${asmaulhusna.statusCode}');
    }
  }

  Future getDoaHarian() async {
    final doaharian = await req
        .get(Uri.parse('https://islamic-api-zhirrr.vercel.app/api/doaharian'));
    print('telah sampai api');
    if (doaharian.statusCode == 200) {
      print('req doa harian berhasil');
      return DoaHarianModel.fromJson(json.decode(doaharian.body));
    } else {
      print('req doa harian gagal ${doaharian.statusCode}');
    }
  }

  Future getNiatSholat() async {
    var data = jsonNiatSholat;
    return NiatSholatModel.fromJson(json.decode(data));
  }

  Future getKisahNabi() async {
    return KisahNabiModel.fromJson(json.decode(jsonKisahNabi));
  }
}
