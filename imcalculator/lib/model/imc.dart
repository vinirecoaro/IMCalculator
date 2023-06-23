class IMC {
  String _date = "";
  double _height = 0;
  double _weight = 0;

  IMC(this._date, this._height, this._weight);

  String get date => _date;
  double get height => _height;
  double get weight => _weight;

  set date(String date) {
    _date = date;
  }

  set height(double height) {
    _height = height;
  }

  set weight(double weight) {
    _weight = weight;
  }

  double returnIMC() {
    return _weight / (_height * _height);
  }
}
