part of swagger.api;

class CancelationTypeConstants {
  /// The underlying value of this enum member.
  String value;

  CancelationTypeConstants._internal(this.value);

  static CancelationTypeConstants dELETE_ = CancelationTypeConstants._internal("DELETE");
  static CancelationTypeConstants tRANSIT_ = CancelationTypeConstants._internal("TRANSIT");
  static CancelationTypeConstants pREACK_ = CancelationTypeConstants._internal("PREACK");

  CancelationTypeConstants.fromJson(dynamic data) {
    switch (data) {
          case "DELETE": value = data; break;
          case "TRANSIT": value = data; break;
          case "PREACK": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CancelationTypeConstants data) {
    return data.value;
  }
}

