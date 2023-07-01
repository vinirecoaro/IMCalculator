import 'package:imcalculator/service/sqlite_database.dart';
import '../model/imc.dart';

class IMCSQLiteRepository {
  Future<List<IMC>> obtainData() async {
    List<IMC> imcs = [];
    var db = await SQLiteDatabase().getDatabase();
    var result = await db.rawQuery("SELECT date, height, weight FROM imcList");
    for (var element in result) {
      imcs.add(IMC(
          element['date'].toString(),
          double.parse(element['height'].toString()),
          double.parse(element['weight'].toString())));
    }
    return imcs;
  }

  Future<void> save(IMC imc) async {
    var db = await SQLiteDatabase().getDatabase();
    await db.rawInsert(
        'INSERT INTO imcList (date, height, weight) values(?,?,?)',
        [imc.date, imc.height, imc.weight]);
  }

  Future<void> remove(int id) async {
    var db = await SQLiteDatabase().getDatabase();
    await db.rawDelete('DELETE FROM imcList WHERE id = ?', [id]);
  }
}
