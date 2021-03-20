part of 'importbloc.dart';

class AsmaulHusmaBloc {
  final api = Api();
  final asmaulhusnaFatcher = PublishSubject<AsmaulHusnaModel>();

  PublishSubject<AsmaulHusnaModel> get asmaulhusna => asmaulhusnaFatcher.stream;

  getAsmaulHusna() async {
    AsmaulHusnaModel asmaulHusnaModel = await api.getAsmaulHusna();
    asmaulhusnaFatcher.sink.add(asmaulHusnaModel);
  }

  dispose() {
    asmaulhusnaFatcher.close();
  }
}
