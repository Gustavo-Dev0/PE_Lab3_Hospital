class GPSUbication {
  double lat = 0.0;
  double long = 0.0;

  GPSUbication(double lat, double long) {
    this.lat = lat;
    this.long = long;
  }

  double getLat() {
    return lat;
  }

  double getLong() {
    return long;
  }

  void setLat(double lat) {
    this.lat = lat;
  }

  void setLong(double long) {
    this.long = long;
  }
}
