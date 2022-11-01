import 'dart:io';

import 'Hospital.dart';
import 'MedicalCheck.dart';
import 'Menu.dart';
import 'Patient.dart';

void main() {
  Hospital hospital = new Hospital("Hospital 41");

  while (true) {
    int option = Menu.principal(hospital);

    switch (option) {
      case 1:
        Patient nP = Menu.addPatientForm();
        hospital.setPatient(nP);
        break;
      case 2:
        hospital.showPatients();
        stdin.readLineSync();
        break;
      case 3:
        int pTAdd_ID = Menu.searchPatientForm();
        Patient pTAdd = hospital.searchPatientById(pTAdd_ID);
        MedicalCheck nMC = Menu.addMedicalCheckForm();
        pTAdd.addMedicalCheck(nMC);
        stdin.readLineSync();
        break;
      case 4:
        int fP_ID = Menu.searchMediaclCheckForm();
        Patient fP = hospital.searchPatientById(fP_ID);
        fP.showMedicalCheckups();
        stdin.readLineSync();
        break;
      case 5:
        return;
      default:
    }
  }
}
