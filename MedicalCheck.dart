class MedicalCheck {
  int _id = 0;
  DateTime _dateOfCheck = DateTime.now();
  double _weight = 0.0;
  double _temperature = 0.0;
  double _presion = 0.0;
  double _saturationLevel = 0.0;

  MedicalCheck(int id, double weight, double temperature, double presion,
      double saturationLevel) {
    this._id = id;
    this._weight = weight;
    this._temperature = temperature;
    this._presion = presion;
    this._saturationLevel = saturationLevel;
  }

  String toString() {
    return """
        ID: ${this._id}
        Peso: ${this._weight}
        Temperatura: ${this._temperature}
        Presión: ${this._presion}
        Nivel de saturación: ${this._saturationLevel}""";
  }
}
