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
}
