import '../model/imc.dart';

class IMCRepository {
  final List<IMC> _imcs = [];

  void addImc(IMC imc) {
    _imcs.add(imc);
  }

  List<IMC> returnIMCList() {
    return _imcs;
  }
}
