part of 'importbloc.dart';

class DoaTahlilBloc {
  final api = Api();
  final doatahlilFatcher = PublishSubject<DoaTahlilModel>();

  PublishSubject<DoaTahlilModel> get doatahlil => doatahlilFatcher.stream;

  getDoaTahlil() async {
    DoaTahlilModel doaTahlilModel = await api.getDoaTahlil();
    doatahlilFatcher.sink.add(doaTahlilModel);
    print('respon telah dikirim ke model');
  }

  dispose() {
    doatahlilFatcher.close();
  }
}
