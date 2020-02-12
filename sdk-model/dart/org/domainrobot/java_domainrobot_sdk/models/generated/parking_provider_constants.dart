part of swagger.api;

class ParkingProviderConstants {
  /// The underlying value of this enum member.
  String value;

  ParkingProviderConstants._internal(this.value);

  static ParkingProviderConstants sEDO_ = ParkingProviderConstants._internal("SEDO");
  static ParkingProviderConstants nAMEDRIVE_ = ParkingProviderConstants._internal("NAMEDRIVE");
  static ParkingProviderConstants pARKINGCREW_ = ParkingProviderConstants._internal("PARKINGCREW");

  ParkingProviderConstants.fromJson(dynamic data) {
    switch (data) {
          case "SEDO": value = data; break;
          case "NAMEDRIVE": value = data; break;
          case "PARKINGCREW": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(ParkingProviderConstants data) {
    return data.value;
  }
}

