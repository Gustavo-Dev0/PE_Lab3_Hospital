import 'GPSUbication.dart';
import 'MedicalCheck.dart';

class Patient {
  int _id = 0;
  String _name = "";
  DateTime _dateOfBirthday = new DateTime.now();
  String _sex = "";
  int _height = 0;
  String _address = "";
  GPSUbication? _ubication = null;
  List<MedicalCheck> _listMedicalCheckups = List.empty(growable: true);

  Patient(int id, String name, DateTime dateOfBirthday, String sex, int height,
      String address, GPSUbication ubication) {
    this._id = id;
    this._name = name;
    this._dateOfBirthday = dateOfBirthday;
    this._sex = sex;
    this._address = address;
    this._height = height;
    this._ubication = ubication;
  }

  void addMedicalCheck(MedicalCheck mc) {
    _listMedicalCheckups.add(mc);
  }

  int getId() {
    return _id;
  }

  String toString() {
    return """
            ID: ${this._id}
            Nombre: ${this._name}
            F. Nacimiento: ${this._dateOfBirthday}
            Estatura: ${this._height}
            Sexo: ${this._sex}
            Dirección: ${this._address}""";
  }

  void showMedicalCheckups() {
    print("Usuario: ${this._name}");
    print("ID: ${this._id}");

    for (MedicalCheck mc in _listMedicalCheckups) {
      print(mc.toString());
      print("");
    }
  }
}
