part of 'importbloc.dart';

class DoaHarianBloc {
  final api = Api();
  final doaharianFatcher = PublishSubject<DoaHarianModel>();

  PublishSubject<DoaHarianModel> get doaharian => doaharianFatcher.stream;

  getDoaHarian() async {
    DoaHarianModel doaHarianModel = await api.getDoaHarian();
    doaharianFatcher.sink.add(doaHarianModel);
  }

  dispose() {
    doaharianFatcher.close();
  }
}
