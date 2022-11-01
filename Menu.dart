import 'dart:io';

import 'GPSUbication.dart';
import 'Hospital.dart';
import 'MedicalCheck.dart';
import 'Patient.dart';

int ID_Patient = 0;
int ID_MedicalCheck = 0;

class Menu {
  static int principal(Hospital hospital) {
    print("\x1B[2J\x1B[0;0H");
    print("---   Sistema de registro médico   ---");
    print("***   ${hospital.name}   ***");
    print("");
    print("Seleccione accion:");

    var listOptions = """
      1- Agregar paciente
      2- Mostrar pacientes
      3- Agregar registro médico
      4- Buscar registro médico
      5- Salir""";
    print(listOptions);
    var input = stdin.readLineSync();
    try {
      int option = int.parse(input!);
      return option;
    } catch (e) {
      print(e.toString());
      return -1;
    }
  }

  static Patient addPatientForm() {
    print("Ingrese nombres completos de paciente");
    var name = stdin.readLineSync();
    print("Ingrese fecha de paciente enm formato(aaaa-mm-dd)");
    var dateOfBirthday = stdin.readLineSync();
    print("Ingrese sexo de paciente(M-F)");
    var sex = stdin.readLineSync();
    print("Ingrese estatura de paciente(cm)");
    var heigth = stdin.readLineSync();
    print("Ingrese dirección de paciente");
    var address = stdin.readLineSync();
    print("Ingrese ubicacion GPS de paciente(Latitud)");
    var lat = stdin.readLineSync();
    print("Ingrese ubicacion GPS de paciente(Longtud)");
    var long = stdin.readLineSync();

    ID_Patient++;

    return new Patient(
        ID_Patient,
        name!,
        DateTime.parse(dateOfBirthday!),
        sex!,
        int.parse(heigth!),
        address!,
        new GPSUbication(double.parse(lat!), double.parse(long!)));
  }

  static MedicalCheck addMedicalCheckForm() {
    print("Ingrese peso del paciente");
    var weight = stdin.readLineSync();
    print("Ingrese temperatura de paciente");
    var temperature = stdin.readLineSync();
    print("Ingrese presion de paciente");
    var presion = stdin.readLineSync();
    print("Ingrese nivel de saturación");
    var saturationLevel = stdin.readLineSync();

    ID_MedicalCheck++;

    return new MedicalCheck(
        ID_MedicalCheck,
        double.parse(weight!),
        double.parse(temperature!),
        double.parse(presion!),
        double.parse(saturationLevel!));
  }

  static int searchMediaclCheckForm() {
    print("Ingrese ID de paciente");
    return int.parse(stdin.readLineSync()!);
  }

  static int searchPatientForm() {
    print("Ingrese ID de paciente para añadir Chekeo");
    return int.parse(stdin.readLineSync()!);
  }
}
