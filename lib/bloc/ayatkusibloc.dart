part of 'importbloc.dart';

class AyatKursiBloc {
  final api = Api();
  final ayatkursiFatcher = PublishSubject<AyatKursiModel>();

  PublishSubject<AyatKursiModel> get ayatkursi => ayatkursiFatcher.stream;
  getAyatKursi() async {
    AyatKursiModel ayatKursiModel = await api.getAyatKursi();
    ayatkursiFatcher.sink.add(ayatKursiModel);
    print('respon telah dikirim ke model');
  }

  dispose() {
    ayatkursiFatcher.close();
  }
}
