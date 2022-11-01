import 'Patient.dart';

class Hospital {
  String name = "";
  List<Patient> _listPatients = new List.empty(growable: true);

  Hospital(String name) {
    this.name = name;
  }

  List<Patient> getPatients() {
    return _listPatients.toList();
  }

  void setPatients(List<Patient> newList) {
    _listPatients = newList;
  }

  void setPatient(Patient p) {
    _listPatients.add(p);
  }

  bool removePatient(Patient p) {
    return _listPatients.remove(p);
  }

  void showPatients() {
    print(_listPatients.length);
    for (Patient p in _listPatients) {
      print(p.toString());
      print("\n");
    }
  }

  Patient searchPatientById(int id) {
    return _listPatients.firstWhere((element) => element.getId() == id);
  }
}
