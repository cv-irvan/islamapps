part of 'importbloc.dart';

class KisahNabiBloc {
  final api = Api();
  final kisahnabiFatcher = PublishSubject<KisahNabiModel>();

  PublishSubject<KisahNabiModel> get kisahnabi => kisahnabiFatcher.stream;

  getKisahNabi() async {
    KisahNabiModel kisahNabiModel = await api.getKisahNabi();
    kisahnabiFatcher.sink.add(kisahNabiModel);
  }

  dispose() {
    kisahnabiFatcher.close();
  }
}
