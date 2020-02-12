part of swagger.api;

class CancelationStatusConstants {
  /// The underlying value of this enum member.
  String value;

  CancelationStatusConstants._internal(this.value);

  static CancelationStatusConstants dELETE_ = CancelationStatusConstants._internal("DELETE");
  static CancelationStatusConstants dELETEEXPIRE_ = CancelationStatusConstants._internal("DELETE_EXPIRE");
  static CancelationStatusConstants tRANSIT_ = CancelationStatusConstants._internal("TRANSIT");
  static CancelationStatusConstants tRANSITEXPIRE_ = CancelationStatusConstants._internal("TRANSIT_EXPIRE");
  static CancelationStatusConstants pREACK_ = CancelationStatusConstants._internal("PREACK");
  static CancelationStatusConstants pREACKEXPIRE_ = CancelationStatusConstants._internal("PREACK_EXPIRE");

  CancelationStatusConstants.fromJson(dynamic data) {
    switch (data) {
          case "DELETE": value = data; break;
          case "DELETE_EXPIRE": value = data; break;
          case "TRANSIT": value = data; break;
          case "TRANSIT_EXPIRE": value = data; break;
          case "PREACK": value = data; break;
          case "PREACK_EXPIRE": value = data; break;
    default: throw('Unknown enum value to decode: $data');
    }
  }

  static dynamic encode(CancelationStatusConstants data) {
    return data.value;
  }
}

