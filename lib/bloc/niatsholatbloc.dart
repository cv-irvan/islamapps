part of 'importbloc.dart';

class NiatSholatBloc {
  final api = Api();
  final niatsholatFatcher = PublishSubject<NiatSholatModel>();

  PublishSubject<NiatSholatModel> get niatsholat => niatsholatFatcher.stream;

  getNiatSholat() async {
    NiatSholatModel niatSholatModel = await api.getNiatSholat();
    niatsholatFatcher.sink.add(niatSholatModel);
  }

  dispose() {
    niatsholatFatcher.close();
  }
}
