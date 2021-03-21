part of 'importbloc.dart';

class BacaanSholatBloc {
  final api = Api();
  final bacaansholatFatcher = PublishSubject<BacaanSholatModel>();

  PublishSubject<BacaanSholatModel> get bacaansholat =>
      bacaansholatFatcher.stream;

  getBacaanSholat() async {
    BacaanSholatModel bacaanSholatModel = await api.getBacaanSholat();
    bacaansholatFatcher.sink.add(bacaanSholatModel);
  }

  dispose() {
    bacaansholatFatcher.close();
  }
}
