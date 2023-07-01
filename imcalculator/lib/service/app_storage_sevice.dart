import 'package:shared_preferences/shared_preferences.dart';

enum STORAGE_KEYS {
  HEIGHT_KEY,
  ;
}

class AppStorageService {
  late SharedPreferences _storage;

  Future<void> _init() async {
    _storage = await SharedPreferences.getInstance();
  }

  Future<double> getHeight() async {
    await _init();
    return _storage.getDouble(STORAGE_KEYS.HEIGHT_KEY.toString()) ?? 0.0;
  }

  Future<void> setHeight(double height) async {
    await _init();
    _storage.setDouble(STORAGE_KEYS.HEIGHT_KEY.toString(), height);
  }
}
